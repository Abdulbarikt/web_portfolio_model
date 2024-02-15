import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final double? width;
  final Color? color;
  final Widget? child;
  final double? height;
  const SectionContainer(
      {super.key, this.width, this.height, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: width,
      height: height,
      decoration: BoxDecoration(color: color),
      child: child,
    );
  }
}
