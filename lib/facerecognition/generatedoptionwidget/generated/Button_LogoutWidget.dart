import 'package:flutter/material.dart';

class Button_LogoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () => Navigator.pushNamed(context, '/GeneratedLoginWidget'),

      child: Container(
        width: 390.0,
        height: 51.849998474121094,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: 51.849998474121094,
                child: ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Container(
                    color: Color.fromARGB(255, 29, 53, 87),
                  ),
                ),
              ),
              Positioned(
                left: 67.2173843383789,
                top: null,
                right: 54.714378356933594,
                bottom: 9.89999771118164,
                width: null,
                height: 37.70000076293945,
                child: Text(
                  '''Odjavi se''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.3639999668395602,
                    fontSize: 30.600000381469727,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                    /* letterSpacing: 0.0, */
                  ),
                ),
              )
            ]),
      ),
    );
  }
}