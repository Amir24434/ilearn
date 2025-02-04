import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.color,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.onPressed,
  });

  final Color color;
  final String text;
  final Color bgColor;
  final Color textColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        elevation: 0,
        side: BorderSide(
          color: color,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(0, 57),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
