import 'package:flutter/material.dart';
import 'package:flutterapp/facerecognition/generatedloginwidget/generated/Logo.dart';
import 'package:flutterapp/facerecognition/generatedloginwidget/generated/ButtonSignIn.dart';
import 'package:flutterapp/facerecognition/generatedloginwidget/generated/TextboxPasswordLogin.dart';
import 'package:flutterapp/facerecognition/generatedloginwidget/generated/TextboxUsernameLogin.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

class GeneratedLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
        borderRadius: BorderRadius.zero,
          child: Container(
        width: 390.0,
        height: 844.0,
            child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: null,
                top: null,
                right: null,
                bottom: null,
                width: 82.21957397460938,
                height: 73.0456771850586,
                child: TransformHelper.translate(
                    x: 1.11, y: -343.48, z: 0, child: Logo()),
              ),
              Positioned(
                left: 39.0,
                top: null,
                right: 45.286041259765625,
                bottom: null,
                width: null,
                height: 69.84783172607422,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -75.08,
                    z: 0,
                    child: TextboxPasswordLogin()),
              ),

              Positioned(
                left: 41.0,
                top: null,
                right: 40.29443359375,
                bottom: null,
                width: null,
                height: 69.84783172607422,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -175.08,
                    z: 0,
                    child: TextboxUsernameLogin()),
              ),
              Positioned(
                left: 39.0,
                top: null,
                right: 39.0,
                bottom: null,
                width: null,
                height: 67.1500015258789,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 39.58,
                    z: 0,
                    child: ButtonSignIn()),
              ),
            ]),
      ),
    ));
  }
}
