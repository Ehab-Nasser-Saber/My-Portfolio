import 'package:flutter/material.dart';

import '../../Components/footer/footer.dart';
import '../../Components/info/info.dart';
import '../../Components/projects/project_card.dart';
import '../../Components/footer/contact_me.dart';

import '../../Components/skills/skills.dart';

class PageComponents {
  static List<Widget> views = [
    INFO(),
    Skills(),
    ProjectCards(),
    ContactMe(),
    Footer()
  ];
}
