import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Color? fillColor;

  const CustomTextFromField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 25, horizontal: 20.0),
        filled: true,
        fillColor: fillColor ?? const Color(0xFFF5F4F8),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                size: 15,
                color: const Color(0xFF252B5C),
              )
            : null,
      ),
      validator: (value) {
        return validator!(value!);
      },
      obscureText: obscureText,
      onChanged: (value) {
        onChanged!(value);
      },
    );
  }
}
