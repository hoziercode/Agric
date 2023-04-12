import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InboxCard extends StatelessWidget {
  const InboxCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              30.0,
            ),
          ),
          border: Border.all(
            color: const Color(0xFFF3F3F3),
          ),
        ),
        child: Row(children: [
          SvgPicture.asset('images/last.svg'),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF262626),
            ),
          ),
        ]),
      ),
    );
  }
}
