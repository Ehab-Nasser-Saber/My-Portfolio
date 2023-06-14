import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../core/responsive/responsive.dart';
import 'card_data.dart';
import 'card_view.dart';

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
        projectUrlGoogle: 'In development',
        inDevelopment: true,
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''Vlens is a Fintech enabler, automating customer onboarding to be fully online securely, and 
ensuring for our customers that their client (supply/demand) is the one who claims to be,
reading and verifying Egyptian ID, and use biometric checks to verify user against provided document,
please visit vlenseg.com for more info and use cases.    
  ''',
        projectScreen1: 'assets/images/vlens1.png',
        projectScreen2: 'assets/images/vlens2.png',
        projectScreen3: 'assets/images/vlens3.png',
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=com.vlens.release',
        inDevelopment: false,
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''On Myfuse app, you can find jobs for Freshers and Experienced people in multiple fields.
             You can choose from a variety of Job options. We're a Startup based in Bangalore,
              we'll be adding more options from reputed organizations soon.
                
                ''',
        projectScreen1: 'assets/images/screen1.png',
        projectScreen2: 'assets/images/screen2.png',
        projectScreen3: 'assets/images/screen3.png',
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=com.airavas.myfuse',
        inDevelopment: false,
        type: "Mobile App"),
    CardData(
        projectDesc:
            '''On Ani-Me app, you can find The Top rated anime and manga with Dark&LightMode, 
            search for anime and manga, and create an account to save your watchlist on.
      created using clean architecture, bloc, firebase ,with Localization for login/signup.''',
        projectScreen1: 'assets/images/myAnime1.PNG',
        projectScreen2: 'assets/images/myAnime2.PNG',
        projectScreen3: 'assets/images/myAnime3.PNG',
        projectUrlGoogle:
            'https://play.google.com/store/apps/details?id=com.animeniac.animeniac',
        inDevelopment: false,
        type: "Mobile App"),
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
                  child: CardsView(content: e),
                );

                // return Cards(content: e);
              }).toList(),
            );
          },
        ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
