//import 'package:ambedkar_student_housing/model/onboard_model.dart';
//import 'package:ambedkar_student_housing/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    this.buttonColor,
    this.borderRadius,
    required this.buttonText,
    this.textColor,
    this.icon,
    //this.index,
    Key? key,
  }) : super(key: key);

  VoidCallback onPressed;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  String buttonText;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        minimumSize: const Size(190, 54),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            SizedBox(width: icon != null ? 8.0 : 0),
            Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
