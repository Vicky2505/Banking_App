import 'package:flutter/material.dart';

class BorderGradient extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final Color color;
  final double height;
  const BorderGradient({
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
    required this.color,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: .2),
        gradient: LinearGradient(
          // ignore: deprecated_member_use
          colors: [Colors.white.withOpacity(.4), color],
          begin: begin,
          end: end,
        ),
        borderRadius: BorderRadius.circular(height),
      ),
      child: Container(
        margin: EdgeInsets.all(.2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(height),
        ),
      ),
    );
  }
}
