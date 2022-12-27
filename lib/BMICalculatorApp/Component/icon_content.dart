import 'package:flutter/material.dart';

import 'constant.dart';
class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({super.key, required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Icon(
            icon,
            size: 75,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )

      ],

    );
  }
}