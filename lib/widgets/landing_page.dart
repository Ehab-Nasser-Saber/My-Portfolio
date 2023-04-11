import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/widgets/page_components/components.dart';

import 'package:provider/provider.dart';
import '../core/providers/drawer_provider.dart';
import '../core/responsive/responsive.dart';
import '../core/theme/cubit/theme_cubit.dart';
import 'nav/nav_desktop.dart';
import 'nav/nav_moblie_drawer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          desktop: NavDesktop(),
          mobile: NavTab(),
          tablet: NavTab(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Components();
        },
      ),
    );
  }
}
