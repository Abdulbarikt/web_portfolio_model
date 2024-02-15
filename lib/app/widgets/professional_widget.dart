import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/textstyle.dart';
import '../utils/constans.dart';

class ProfessionalWidget extends StatelessWidget {
  const ProfessionalWidget({
    super.key,
    required this.themedata,
  });

  final ThemeData themedata;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Professional Info',
          style: themedata.textTheme.bodySmall,
        ),
        sizeH20,
        ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return FractionallySizedBox(
                widthFactor: 0.75,
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 100,
                  child: Card(
                    color: primaryColor,
                    elevation: 5.0,
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.circle),
                        title: Text(
                          'SelfStack | Flutter Developer',
                          style: bodyStyle,
                        ),
                        subtitle: Text(
                          '2019 - Present',
                          style: themedata.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ],
    ));
  }
}
