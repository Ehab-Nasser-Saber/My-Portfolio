import 'package:flutter/material.dart';
import 'package:my_portfolio/Components/skills/skills_desktop.dart';
import 'package:my_portfolio/Components/skills/skills_mobile.dart';

import 'package:sizer/sizer.dart';

import '../../core/responsive/responsive.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Responsive(
              mobile: SkillsMobile(theme: theme),
              tablet: SkillsDesktop(theme: theme),
              desktop: SkillsDesktop(theme: theme))
        ],
      ),
    );
  }
}
