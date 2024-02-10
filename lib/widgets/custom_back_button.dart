import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF5F4F8),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        elevation: 0,
      ),
      child: const Icon(Icons.chevron_left),
    );
  }
}
