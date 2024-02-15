
import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/textstyle.dart';
import '../utils/constans.dart';

class LanguageSkill extends StatelessWidget {
  const LanguageSkill({
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
          'Languages',
          style: themedata.textTheme.bodySmall,
        ),
        sizeH20,
        FractionallySizedBox(
          widthFactor: 0.65,
          child: Card(
            elevation: 5.0,
            color: primaryColor,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return FractionallySizedBox(
                    widthFactor: 0.65,
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 45,
                      child: Center(
                        child: ListTile(
                          leading: const Icon(Icons.circle),
                          title: Text(
                            'data',
                            style: bodyStyle,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    ));
  }
}

