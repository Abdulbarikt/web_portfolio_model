import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/core/colors.dart';
import 'package:portfolio/app/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
          scaffoldBackgroundColor: primaryColor,
          textTheme: TextTheme(
            bodySmall: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal),
            bodyMedium: GoogleFonts.poppins(
                color: Colors.white, fontSize: 27, fontWeight: FontWeight.w700),
            bodyLarge: GoogleFonts.poppins(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
            titleSmall: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          )),
      home: const HomePage(),
    );
  }
}
