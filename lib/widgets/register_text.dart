import 'package:ambedkar_student_housing/screens/auth/signup_screen.dart';
import 'package:ambedkar_student_housing/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: 'Don’t have an account?',
            fontFamily: 'Lato',
            fontSize: 12,
            textColor: const Color.fromRGBO(83, 88, 122, 1),
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(width: 3.0),
          InkWell(
              onTap: () async {
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => SignUpScreen()));
              },
              child: const Text(
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Lato',
                    color: Color.fromRGBO(31, 76, 107, 1),
                    fontWeight: FontWeight.w700),
              )),
        ],
      ),
    );
  }
}
