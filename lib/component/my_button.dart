
import 'package:burger_ui/constans/styles.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color borderColor;
  final VoidCallback onTap;
  const MyButton(
      {required this.text,
       this.color,
      required this.borderColor,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: w / 2.6,
        height: h / 16,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
