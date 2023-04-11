import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.text,
    required this.onPress,
    required this.colour,
    required this.color,
    this.border,
  });

  final String text;
  final Function() onPress;
  final Color colour;
  final Color color;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          ),
          border: border,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
