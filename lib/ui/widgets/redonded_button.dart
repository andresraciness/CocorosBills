import 'package:cocorosbills/data/source/palette.dart';
import 'package:flutter/material.dart';

class RedondButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const RedondButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.colorButtons,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            buttonText,
            style: kButtonText,
          ),
        ),
      ),
    );
  }
}
