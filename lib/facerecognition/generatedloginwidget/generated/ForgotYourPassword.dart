import 'package:flutter/material.dart';

class ForgotYourPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        '''Zaboravio si lozinku?''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.2102272931267233,
          fontSize: 17.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 29, 53, 87),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
