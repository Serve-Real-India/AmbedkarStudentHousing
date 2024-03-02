import 'package:flutter/material.dart';

class SocialMediaLoginOption extends StatelessWidget {
  const SocialMediaLoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 158.5,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200]),
          child: Image.asset('assets/images/google.png', height: 25.0),
        ),
        SizedBox(width: 25),
        Container(
          width: 158.5,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200]),
          child: Image.asset('assets/images/facebook.png', height: 25.0),
        ),
      ],
    );
  }
}
