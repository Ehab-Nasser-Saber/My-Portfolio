import 'package:flutter/material.dart';

class RoleWidget extends StatelessWidget {
  final String imageUrl;
  final String role;
  final String roleDescription;
  final String whatIDoTitle;
  final String whatIDo;
  final String skill;
  final String skillNames;

  const RoleWidget({
    Key? key,
    required this.imageUrl,
    required this.role,
    required this.whatIDo,
    required this.whatIDoTitle,
    required this.roleDescription,
    required this.skill,
    required this.skillNames,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 64,
        ),
        SizedBox(
          height: 100,
          width: 120,
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          role,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          roleDescription,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          whatIDoTitle,
          style: const TextStyle(
            // color: Color(0xff7510f7),
            fontSize: 15.0,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          whatIDo,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          skill,
          style: const TextStyle(
            fontSize: 15.0,
            // color: Color(0xff7510f7),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          skillNames,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
