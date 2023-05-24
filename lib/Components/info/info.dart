import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constant/url_launcher.dart';
import 'package:sizer/sizer.dart';

import '../../core/color/colors.dart';

class INFO extends StatelessWidget {
  const INFO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        const Text(
          'Engineer, Front-end Developer',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          // height: 20,
          height: 2.h,
        ),
        Text(
          'I design and code beautifully simple things, and I love what I do.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: primaryColor)),
          // width: 250,
          // height: 250,
          child: Image.network(
            'https://media0.giphy.com/media/qgQUggAC3Pfv687qPC/giphy.gif',
            fit: BoxFit.cover,
          ),
        ),
        // SizedBox(
        //   height: 50,
        // ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'Hi, I\'m Ehab. Nice to meet you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: 70.w,
                  child: Column(
                    children: [
                      Text(
                        'Since beginning my journey as a freelance developer, I\'ve done remote work for agencies, and collaborated with talented people to create digital products for both business and consumer use. I\'m quietly confident, naturally curious, and perpetually working on improving my skills.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 3.sp > 13 ? 3.sp : 13),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text(
                        'Agencies I\'ve Worked For :',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                openURL('https://www.codementor.io/');
                              },
                              child: Text(
                                '<CodeMentorX>',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 3.sp > 13 ? 3.sp : 13),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '<Regon Technologies>',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 3.sp > 13 ? 3.sp : 13),
                              )),
                          TextButton(
                              onPressed: () {
                                openURL('https://www.agyadeg.com/');
                              },
                              child: Text(
                                '<Agyad Multi Projects>',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 3.sp > 13 ? 3.sp : 13),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
