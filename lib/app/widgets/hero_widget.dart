
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';
import '../utils/constans.dart';
import 'first_button_widget.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.themedata,
    required this.size,
  });

  final ThemeData themedata;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, I am Bari',
              style: themedata.textTheme.bodyLarge,
              textAlign: TextAlign.left,
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.poppins(
                  color: buttonColor,
                  fontSize: 70,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
            sizeH20,
            MyButton(
              size: size,
              text: 'Hire Me',
            ),
          ],
        ),
      ),
    );
  }
}

