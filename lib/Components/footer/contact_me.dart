import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:universal_html/html.dart' as html;

import '../../core/color/colors.dart';

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
              TextButton(
                onPressed: () {
                  html.window.open(
                      'https://drive.google.com/file/d/1Ri3dQVLxfHa8Uucm_2QCAaNoqqURcvec/view?usp=share_link',
                      "pdf");
                },
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    side: const BorderSide(
                        color: Color.fromRGBO(55, 16, 247, 1), width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                child: const Text(
                  "Download Resume",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
