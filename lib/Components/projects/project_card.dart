import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';

import 'package:sizer/sizer.dart';

import '../../core/color/colors.dart';
import '../../core/constant/url_launcher.dart';
import '../../core/responsive/responsive.dart';
import 'card_data.dart';

class ProjectCards extends StatelessWidget {
  final List<CardData> cardContent = [
    CardData(
        projectDesc:
            '''- Leopelle developed by Flutter Dart specializes in genuine leather for furniture and home accessories, as well as leather accessories, and cladding.
- Developed QR code system to attend the events and more. 
- Used Flutter, Dart, Firebase, and MVVM.''',
        projectScreen1: 'assets/images/Spash Screen.png',
        projectScreen2: 'assets/images/Login 01.png',
        projectScreen3: 'assets/images/Home.png',
        projectUrl: 'In development'),
    CardData(
        projectDesc:
            '''Vlens is a Fintech enabler, automating customer onboarding to be fully online securely, and 
ensuring for our customers that their client (supply/demand) is the one who claims to be,
reading and verifying Egyptian ID, and use biometric checks to verify user against provided document,
please visit vlenseg.com for more info and use cases.''',
        projectScreen1: 'assets/images/vlens1.png',
        projectScreen2: 'assets/images/vlens2.png',
        projectScreen3: 'assets/images/vlens3.png',
        projectUrl:
            'https://play.google.com/store/apps/details?id=com.vlens.release'),
    CardData(
        projectDesc:
            '''On Myfuse app, you can find jobs for Freshers and Experienced people in multiple fields.
             You can choose from a variety of Job options. We're a Startup based in Bangalore,
              we'll be adding more options from reputed organizations soon.''',
        projectScreen1: 'assets/images/screen1.png',
        projectScreen2: 'assets/images/screen2.png',
        projectScreen3: 'assets/images/screen3.png',
        projectUrl:
            'https://play.google.com/store/apps/details?id=com.airavas.myfuse'),
    CardData(
        projectDesc:
            '''On Animeniac app, you can find The Top rated anime and manga, 
            search for anime and manga, and create an account to save your watchlist on.
      created using clean architecture, bloc, firebase.''',
        projectScreen1: 'assets/images/anime1.png',
        projectScreen2: 'assets/images/anime2.png',
        projectScreen3: 'assets/images/anime3.png',
        projectUrl: 'In development'),
    // CardData(
    //     projectDesc:
    //         '''On Myfuse website, you can find jobs for Freshers and Experienced people in multiple fields.
    //          You can choose from a variety of Job options. We\'re a Startup based in Bangalore,
    //           we\'ll be adding more options from reputed organizations soon.''',
    //     projectScreen1: 'assets/images/Capture1.PNG',
    //     projectScreen2: 'assets/images/Capture1.PNG',
    //     projectScreen3: 'assets/images/Capture1.PNG',
    //     projectUrl: 'https://www.myfuse.in/#contact'),
  ];

  ProjectCards({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 1200.0),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'My Startup Projects',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: cardContent.map((e) {
                final availableWidth = constraints.maxWidth;

                final rowItemCount = Responsive.isDesktop(context)
                    ? 2
                    : Responsive.isTablet(context)
                        ? 1
                        : 1;

                final itemWidth =
                    (availableWidth - ((rowItemCount - 1) * 16.0)) /
                        rowItemCount;
                return SizedBox(
                  width: itemWidth,
                  child: Cards(content: e),
                );

                // return Cards(content: e);
              }).toList(),
            );
          },
        ),
        // Container(
        //   child: GridView.builder(
        //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //       crossAxisSpacing: 100,
        //       maxCrossAxisExtent: 1000,
        //       childAspectRatio: 1.1,
        //     ),
        //     itemBuilder: (context, index) {
        //       return Cards(content: cardContent[index]);
        //     },
        //     itemCount: 4,
        //     shrinkWrap: true,
        //     physics: NeverScrollableScrollPhysics(),
        //   ),
        // ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}

class Cards extends StatelessWidget {
  final CardData content;
  const Cards({super.key, required this.content});

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
          TextButton(
            onPressed: () {
              content.projectUrl.contains("http")
                  ? openURL(content.projectUrl)
                  : const SizedBox.shrink();
              // if (content.projectUrl.contains("http")) {
              //   openURL(content.projectUrl);
              // } else {
              //   return null;
              // }
            },
            child: Text(
              content.projectUrl,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18.0),
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
