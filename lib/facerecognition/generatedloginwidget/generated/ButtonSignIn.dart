import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutterapp/facerecognition/generatedloginwidget/generated/TextboxUsernameLogin.dart';
import 'package:flutterapp/facerecognition/generatedloginwidget/generated/TextboxPasswordLogin.dart';

class ButtonSignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () async {
            var username= TextboxUsernameLogin.logInUserNameController.text;
            var password= TextboxPasswordLogin.logInPasswordController.text;


            if (username=="admin" && password=="admin") {
              TextboxPasswordLogin.logInPasswordController.clear();
              TextboxUsernameLogin.logInUserNameController.clear();
              Navigator.pushNamed(context, '/GeneratedOptionWidget');
            }
            else{
              showDialog(
                context: context,
                builder: (context) => AlertDialog(

                  title: Text("Korisničko ime ili lozinka nije točno upisana!"),
                  actions: [
                    TextButton(
                        child: Text('Back'),
                        onPressed: () {

                          Navigator.pop(context);
                        }
                    ),
                  ],
                ),
              );
            }
          },

      child: Container(
        width: 312.0,
        height: 67.1500015258789,
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
                height: 67.1500015258789,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36.54999923706055),
                  child: Container(
                    color: Color.fromARGB(255, 29, 53, 87),
                  ),
                ),
              ),
              Positioned(
                left: null,
                top: null,
                right: null,
                bottom: null,
                width: null,
                height: 38.0,
                child: TransformHelper.translate(
                    x: 0.00, y: 1.42, z: 0, child: Text(
                  '''Prijavi se''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.2102272780396295,
                    fontSize: 30.600000381469727,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 255, 255, 255),

                    /* letterSpacing: 0.0, */
                  ),
                ),
                ),
              )
            ]),
      ),
    );
  }
}
