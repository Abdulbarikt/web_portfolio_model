import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/textstyle.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      elevation: 5.0,
      child: Container(
        width: 300,
        color: primaryColor,
        child: Stack(
          children: [
            Container(
              height: 270,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/project.jpg'))),
            ),
            Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ABCD',
                        style: bodyStyle,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: buttonColor,
                          ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
