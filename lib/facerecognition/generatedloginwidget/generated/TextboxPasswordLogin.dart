import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class TextboxPasswordLogin extends StatelessWidget {
  static final logInPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.7139587402344,
      height: 69.84783172607422,
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
          color: Color.fromARGB(255, 167, 167, 167),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: TextField(
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
            controller: logInPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Lozinka',
              hintStyle: TextStyle(
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
            ),
          ),
        ),
      ),
    );
  }
}