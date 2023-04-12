import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({
    super.key,
    required this.text,
    this.colour,
  });
  final String text;
  final Color? colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
        border: Border.all(
          color: const Color(0xFFF3F3F3),
        ),
        color: colour ?? Colors.white,
      ),
      width: 100.0,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
