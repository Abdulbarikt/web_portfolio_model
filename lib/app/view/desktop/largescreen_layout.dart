import 'package:flutter/material.dart';
import 'package:portfolio/app/core/colors.dart';
import 'package:portfolio/app/core/textstyle.dart';
import 'package:portfolio/app/utils/constans.dart';
import 'package:portfolio/app/widgets/custom_section.dart';
import 'package:portfolio/app/widgets/header_widget.dart';

import '../../widgets/educational_widget.dart';
import '../../widgets/hero_widget.dart';
import '../../widgets/languageskill_widget.dart';
import '../../widgets/professional_widget.dart';
import '../../widgets/progectcard_widget.dart';
import '../../widgets/softskill_widget.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themedata = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 20),
            SectionContainer(
              width: size.width,
              height: size.height * 0.70,
              color: primaryColor,
              child: Row(
                children: [
                  HeroWidget(themedata: themedata, size: size),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Container(
                        height: size.height * 0.45,
                        width: size.width * 0.45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                          image: DecorationImage(
                            image: AssetImage('assets/my.png'),
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            sizeH20,
            SectionContainer(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: themedata.textTheme.bodyLarge,
                  ),
                  sizeH20,
                  Text(
                    "I'm eager to learn and grow as a Flutter developer. I've completed several beginner-friendly projects. I'm passionate about building beautiful and functional apps, and I'm actively seeking opportunities to learn and contribute to real-world projects.I craft high-performance, cross-platform apps that delight users. I'm experienced in State Management with Provider, BLoC, and DataBase with FireBase and SqFlite.I'm always learning and exploring new possibilities in Flutter, and I'm excited to tackle your challenging projects. ",
                    style: bodyStyle,
                  )
                ],
              ),
            ),
            SectionContainer(
              width: size.width,
              color: primaryColor,
              child: Row(
                children: [
                  ProfessionalWidget(themedata: themedata),
                  EducationalWidget(themedata: themedata),
                ],
              ),
            ),
            sizeH20,
            SectionContainer(
              width: size.width,
              color: skillColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: themedata.textTheme.bodyLarge,
                  ),
                  sizeH20,
                  Row(
                    children: [
                      SoftSkill(themedata: themedata),
                      LanguageSkill(themedata: themedata),
                    ],
                  ),
                ],
              ),
            ),
            sizeH20,
            SectionContainer(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Projects',
                    style: themedata.textTheme.bodyLarge,
                  ),
                  sizeH20,
                  SectionContainer(
                    height: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ProjectCard(),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
