import 'package:flutter/material.dart';
import 'package:my_portfolio/Components/skills/role_widget.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';

import '../../core/color/colors.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Container(
          child: Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                gradient: theme.contactCard,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [blackColorShadow],
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: const [
                    Expanded(
                      child: RoleWidget(
                        imageUrl:
                            'https://miro.medium.com/v2/resize:fit:900/1*OrjCKmou1jT4It5so5gvOA.jpeg',
                        role: 'Front-End-Web Developer',
                        roleDescription:
                            'I value simple content structure, clean arc patterns, and thoughtful interactions.',
                        whatIDoTitle: 'Languages I use:',
                        whatIDo: 'HTML, CSS, JavaScript',
                        skill: 'Dev Tools:',
                        skillNames: 'VueJs\n\nBootStrap',
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: primaryColor,
                    ),
                    Expanded(
                      child: RoleWidget(
                        imageUrl:
                            'https://miro.medium.com/max/1200/1*PblQquEXxZ6U1BmBNlEprA.jpeg',
                        role: 'Front-End-App/Web Developer',
                        roleDescription:
                            'I like to code things from scratch, and enjoy bringing ideas to life.',
                        whatIDoTitle: 'Languages I use:',
                        whatIDo: 'Dart, Java',
                        skill: 'Dev Tools:',
                        skillNames:
                            'Flutter\n\nFigma\n\nPostMan\n\nVsCode\n\nGithub',
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
