import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:my_portfolio/widgets/nav/nav_title.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../core/providers/drawer_provider.dart';
import '../../core/responsive/responsive.dart';
import '../../core/theme/cubit/theme_cubit.dart';

import 'nav_actions.dart';
import 'nav_scroll.dart';

class NavDesktop extends StatefulWidget {
  const NavDesktop({Key? key}) : super(key: key);

  @override
  State<NavDesktop> createState() => _NavDesktopState();
}

class _NavDesktopState extends State<NavDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
        color: theme.navBarColor,
        child: Row(
          children: [
            const NavTitle(),
            const Expanded(child: SizedBox(width: double.infinity)),
            ...NavBarUtils.names.asMap().entries.map(
                  (e) => NavBarActionButton(
                    label: e.value,
                    index: e.key,
                  ),
                ),
            InkWell(
                onTap: () {
                  context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
                },
                child: Image.asset(
                  state.isDarkThemeOn
                      ? "assets/images/dark.png"
                      : "assets/images/light.png",
                  height: 30,
                  width: 30,
                  color: state.isDarkThemeOn ? Colors.black : Colors.white,
                )),
          ],
        ),
      );
    });
  }
}

class NavTab extends StatelessWidget {
  const NavTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.navBarColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
      child: Row(
        children: [
          IconButton(
            highlightColor: Colors.white54,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
