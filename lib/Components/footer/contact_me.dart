import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';

import 'package:sizer/sizer.dart';

import '../../core/color/colors.dart';
import '../../core/constant/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: theme.contactCard,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [blackColorShadow],
          ),
          height: 200,
          width: 1200,
          child: Wrap(
            runAlignment: WrapAlignment.spaceEvenly,
            alignment: WrapAlignment.spaceEvenly,
            children: [
              Text(
                'Start a project',
                style: TextStyle(
                    fontSize: 3.sp > 14 ? 3.sp : 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Interested in working together? \nI\'ll buy the coffee.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                onPressed: () {
                  openURL('https://www.linkedin.com/in/ehab-nasser-a23139223/');
                },
                child: Text(
                  "Contact me",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    side: BorderSide(
                        color: Color.fromRGBO(55, 16, 247, 1), width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
