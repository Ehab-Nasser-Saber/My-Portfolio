import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:sizer/sizer.dart';

import '../../core/color/colors.dart';
import '../../core/constant/url_launcher.dart';
import 'card_data.dart';

class CardsView extends StatelessWidget {
  final CardData content;

  const CardsView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        gradient: theme.contactCard,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [blackColorShadow],
      ),

      // borderRadius: BorderRadius.circular(16.0),
      // border: Border.all(color: primaryColor)),
      child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              content.type,
              style: TextStyle(
                  fontSize: 3.sp > 13 ? 3.sp : 13, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                content.projectScreen1,
                fit: BoxFit.cover,
                width: 10.w,
              ),
              Image.asset(
                content.projectScreen2,
                fit: BoxFit.cover,
                width: 10.w,
              ),
              Image.asset(
                content.projectScreen3,
                fit: BoxFit.cover,
                width: 10.w,
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              content.projectDesc,
              style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          content.inDevelopment
              ? const Text(
                  "In Development",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0, color: Colors.blueAccent),
                )
              : content.webSite != null
                  ? TextButton(
                      onPressed: () {
                        openURL(content.webSite!);
                      },
                      child: Text(
                        content.webSite!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    )
                  : Center(
                      child: Row(
                        mainAxisAlignment: (content.projectUrlApple != null &&
                                content.projectUrlGoogle != null)
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          content.projectUrlApple != null
                              ? InkWell(
                                  onTap: () {
                                    openURL(content.projectUrlApple!);
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Apple Store ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blueAccent),
                                      ),
                                      Icon(
                                        MdiIcons.apple,
                                      ),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                          content.projectUrlGoogle != null
                              ? InkWell(
                                  onTap: () {
                                    openURL(content.projectUrlGoogle!);
                                  },
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Google Play ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.blueAccent),
                                      ),
                                      Icon(MdiIcons.googlePlay)
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
