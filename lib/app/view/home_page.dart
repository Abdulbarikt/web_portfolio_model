import 'package:flutter/material.dart';

import 'desktop/largescreen_layout.dart';
import 'mobile/mobile_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 495) {
          return const MobileLayout();
        } else {
          return const LargeScreenLayout();
        }
      },
    );
  }
}
