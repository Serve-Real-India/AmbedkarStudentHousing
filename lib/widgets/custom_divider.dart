import 'package:ambedkar_student_housing/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            indent: 20.0,
            endIndent: 10.0,
            thickness: 1,
          ),
        ),
        CustomText(
          text: "OR",
          fontFamily: 'Raleway',
          fontSize: 10,
          textColor: const Color.fromRGBO(161, 165, 193, 1),
          textAlign: TextAlign.left,
          fontWeight: FontWeight.w600,
        ),
        const Expanded(
          child: Divider(
            indent: 10.0,
            endIndent: 20.0,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
