import 'package:flutter/material.dart';
import 'package:flutterapp/facerecognition/generatedloginwidget/GeneratedLoginWidget.dart';
import 'package:flutterapp/facerecognition/generatedoptionwidget/GeneratedOptionWidget.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(facerecognition());
  NotificationService().initNotification();
  connectAndSubscribe();
}

class facerecognition extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedLoginWidget',
      routes: {
        '/GeneratedLoginWidget': (context) => GeneratedLoginWidget(),
        '/GeneratedOptionWidget': (context) => GeneratedOptionWidget(),
      },
    );
  }
}

class NotificationService {
  // Move the initialization out of the method to avoid re-initializing
  static final NotificationService _notificationService = NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    const androidInitialize = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initializationSettings = InitializationSettings(android: androidInitialize);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification() async {
    const androidDetails = AndroidNotificationDetails(
      'channelId',
      'channelName',
      priority: Priority.high,
      importance: Importance.max,
    );

    const notificationDetails = NotificationDetails(android: androidDetails);

    await flutterLocalNotificationsPlugin.show(
      0,
      'NOTIFIKACIJA ULJEZA',
      'Netko je u automobilu, a to nisi ti?',
      notificationDetails,
    );
  }
}

Future<void> connectAndSubscribe() async {
  final client = MqttServerClient('test.mosquitto.org', 'DIP');
  client.port = 1883;
  client.logging(on: true);
  client.keepAlivePeriod = 20;
  client.onConnected = onConnected;
  client.onDisconnected = onDisconnected;
  client.onSubscribed = onSubscribed;
  client.onUnsubscribed = onUnsubscribed;
  client.onSubscribeFail = onSubscribeFail;
  client.pongCallback = pong;

  final connMess = MqttConnectMessage()
      .withClientIdentifier('flutter_client')
      .startClean()
      .withWillQos(MqttQos.atLeastOnce);
  client.connectionMessage = connMess;

  try {
    await client.connect();
  } catch (e) {
    print('Exception: $e');
    client.disconnect();
  }

  if (client.connectionStatus!.state == MqttConnectionState.connected) {
    print('Connected');
    client.subscribe('DIP/lock', MqttQos.atLeastOnce);

    client.updates!.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final recMess = c[0].payload as MqttPublishMessage;
      final pt =
      MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      print('Received message: $pt from topic: ${c[0].topic}>');
      NotificationService().showNotification();
    });
  } else {
    print('Connection failed');
    client.disconnect();
  }
}

void onConnected() {
  print('Connected to MQTT broker');
}

void onDisconnected() {
  print('Disconnected from MQTT broker');
}

void onSubscribed(String topic) {
  print('Subscribed to $topic');
}

void onUnsubscribed(String? topic) {
  print('Unsubscribed from $topic');
}

void onSubscribeFail(String topic) {
  print('Failed to subscribe to $topic');
}

void pong() {
  print('Ping response received');
}