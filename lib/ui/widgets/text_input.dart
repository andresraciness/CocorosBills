import 'package:cocorosbills/data/source/palette.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obscureText;
  final TextEditingController? controller;

  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.none,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextFormField(
          controller: controller,
          style: kBodyText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 18),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: kBodyText,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Palette.kWhite,
                size: 26,
              ),
            ),
          ),
          keyboardType: inputType,
          textInputAction: inputAction,
          obscureText: obscureText,
        ),
      ),
    );
  }
}
