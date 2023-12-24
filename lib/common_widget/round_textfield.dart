import 'package:ebook/common/color_extenstion.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  const RoundTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyBoardType,
    this.obscureText = false,
  });
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyBoardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: TColor.textbox, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: controller,
        keyboardType: keyBoardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          hintText: hintText,
        ),
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
