import 'package:flutter/material.dart';
import 'package:flutterapp/facerecognition/generatedoptionwidget/generated/Button_CallWidget.dart';
import 'package:flutterapp/facerecognition/generatedoptionwidget/generated/Button_UnlockWidget.dart';
import 'package:flutterapp/facerecognition/generatedoptionwidget/generated/Button_LogoutWidget.dart';
import 'package:flutterapp/facerecognition/generatedoptionwidget/generated/GeneratedLabel_OptionWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

class GeneratedOptionWidget extends StatelessWidget {
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
                left: 0,
                top: 0,
                right: 0.0,
                bottom: null,
                width: null,
                height: 85.0,
                child: GeneratedLabel_PaymentWidget(),
              ),
              Positioned(
                left: 39.0,
                top: null,
                right: 39.0,
                bottom: null,
                width: null,
                height: 62.04999923706055,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -35.98,
                    z: 0,
                    child: Button_CallWidget()),
              ),
              Positioned(
                left: 39.0,
                top: null,
                right: 39.0,
                bottom: null,
                width: null,
                height: 62.04999923706055,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -135.98,
                    z: 0,
                    child: Button_UnlockWidget()),
              ),

              Positioned(
                left: null,
                top: null,
                right: null,
                bottom: null,
                width: 213.64999389648438,
                height: 50.45000076293945,
                child: TransformHelper.translate(
                    x: -0.18,
                    y: -247.77,
                    z: 0,
                    child: Text(
                      '''Choose option''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.210227219954781,
                        fontSize: 23.0,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),

                        /* letterSpacing: 0.0, */
                      ),
                    )),
              ),
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: 0.15000152587890625,
                width: null,
                height: 51.849998474121094,
                child: Button_LogoutWidget(),
              ),
            ]),
      ),
    ));
  }
}
