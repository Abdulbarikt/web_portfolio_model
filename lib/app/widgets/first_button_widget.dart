import 'package:flutter/material.dart';
import 'package:portfolio/app/core/colors.dart';

class MyButton extends StatelessWidget {
  final Size size;
  final String? text;
  const MyButton({super.key, required this.size, this.text});

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: buttonColor),
      height: 40,
      width: size.width * 0.09,
      child: Center(
        child: Text(
          text!,
          style: themedata.textTheme.bodySmall,
        ),
      ),
    );
  }
}
