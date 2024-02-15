import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/widgets/custom_section.dart';

import '../core/colors.dart';
import '../utils/constans.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themedata = Theme.of(context);
    return SectionContainer(
        width: size.width,
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
                text: TextSpan(
                    text: 'Abdul',
                    style: themedata.textTheme.bodyMedium,
                    children: [
                  TextSpan(
                      text: 'Bari',
                      style: GoogleFonts.poppins(
                          fontSize: 27,
                          color: buttonColor,
                          fontWeight: FontWeight.w700))
                ])),
            SectionContainer(
                width: size.width / 2,
                color: primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About',
                      style: themedata.textTheme.bodySmall,
                    ),
                    sizeW20,
                    Text(
                      'Skills',
                      style: themedata.textTheme.titleSmall,
                    ),
                    sizeW20,
                    Text(
                      'Projects',
                      style: themedata.textTheme.titleSmall,
                    ),
                    sizeW20,
                    Text(
                      'Resume',
                      style: themedata.textTheme.titleSmall,
                    )
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Condact',
                  style: themedata.textTheme.titleSmall,
                ),
              ),
            )
          ],
        ));
  }
}
