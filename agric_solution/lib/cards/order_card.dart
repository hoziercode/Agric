import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.firstText,
    required this.fourtText,
    required this.secondText,
    required this.thirdText,
    this.color,
    this.colour,
  });

  final String firstText;
  final String secondText;
  final String thirdText;
  final String fourtText;
  final Color? color;
  final Color? colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
        border: Border.all(
          color: const Color(0xFFF3F3F3),
        ),
      ),
      height: 170.0,
      width: 150.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            firstText,
            style: TextStyle(
              color: color ?? const Color(0xFF262626),
              fontWeight: FontWeight.w600,
              fontSize: 32.0,
            ),
          ),
          Text(
            secondText,
            style: const TextStyle(
              color: Color(0xFF9F9F9F),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            thirdText,
            style: TextStyle(
              color: colour ?? const Color(0xFF262626),
              fontWeight: FontWeight.w600,
              fontSize: 32.0,
            ),
          ),
          Text(
            fourtText,
            style: const TextStyle(
              color: Color(0xFF9F9F9F),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
