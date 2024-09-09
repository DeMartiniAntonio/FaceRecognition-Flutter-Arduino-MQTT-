import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:url_launcher/url_launcher.dart';

class Button_CallWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () => launch('tel:+385884044')
      ,
      child: Container(
      width: 312.0,
      height: 62.04999923706055,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36.54999923706055),
        boxShadow: kIsWeb
            ? []
            : [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(0.0, 4.0),
            blurRadius: 4.0,
          )
        ],
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0.0,
              top: null,
              right: 0.0,
              bottom: null,
              width: null,
              height: 62.04999923706055,
              child: Container(
                width: 312.0,
                height: 62.04999923706055,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.54999923706055),
                  boxShadow: kIsWeb
                      ? []
                      : [
                    BoxShadow(
                      color: Color.fromARGB(63, 0, 0, 0),
                      offset: Offset(4.25, 4.25),
                      blurRadius: 4.25,
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36.54999923706055),
                  child: Container(
                    color: Color.fromARGB(255, 29, 53, 87),
                  ),
                ),
              ),
            ),
            Positioned(
              left: null,
              top: null,
              right: null,
              bottom: null,
              width: null,
              height: 42.0,
              child: TransformHelper.translate(
                  x: 0.00, y: 2.98, z: 0, child: Text(
                '''Nazovi policiju''',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.2102272780396295,
                  fontSize: 30.600000381469727,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 255, 255, 255),

                  /* letterSpacing: 0.0, */
                ),
              )),
            )
          ]),
    ));
  }
}



