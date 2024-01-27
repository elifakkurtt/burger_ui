import 'package:burger_ui/constans/colors.dart';
import 'package:burger_ui/constans/styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final bool obscureText;

  const TextFieldWidget(
      {required this.obscureText, this.prefixIcon, this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: darkBlue,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: TextField(
            obscureText: obscureText,
            cursorColor: pink,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: pBold,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
