import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? borderColor;

  const CustomBackButton(
      {super.key, required this.onPressed, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50, // <-- match_parent
      height: 50, // <-- match-parent
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF5F4F8),
          shape: const CircleBorder(),
          padding: const EdgeInsets.only(left: 1),
          //elevation: 0,
          side: BorderSide(color: borderColor ?? const Color(0xFFF5F4F8)),
        ),
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}
