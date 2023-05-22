import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../core/constant/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 70),
      child: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Living, learning, & leveling up\none day at a time.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
                // color: Colors.white
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FontAwesomeIcons.linkedin,
                onTap: () => openURL(
                    'https://www.linkedin.com/in/ehab-nasser-a23139223/'),
              ),
              IconButton(
                icon: FontAwesomeIcons.github,
                onTap: () => openURL('https://github.com/Ehab-Nasser-Saber'),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Text(
            'Made by Ehab Nasser',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Made with',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                  height: 50,
                  width: 100,
                  child: Image.network(
                    'https://miro.medium.com/max/1200/1*PblQquEXxZ6U1BmBNlEprA.jpeg',
                    fit: BoxFit.cover,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const IconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(117, 16, 247, 1.0),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(18),
        ),
        child: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
