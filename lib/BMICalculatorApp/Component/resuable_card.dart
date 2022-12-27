import 'package:flutter/material.dart';
class ReuseableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  ReuseableCard({required this.cardChild, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}