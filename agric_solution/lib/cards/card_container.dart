import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {super.key,
      required this.images,
      this.topic,
      this.right,
      this.top,
      this.subtopic});

  final List<Widget> images;
  final String? topic;
  final String? subtopic;
  final double? right;
  final double? top;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: right!),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: top!,
            ),
            child: Row(
              children: [
                Text(
                  topic.toString(),
                  style: const TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                const Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFF5DE898),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                  child: Text(
                    subtopic ?? '',
                    style: const TextStyle(
                      color: Color(0xFFB4B4B4),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 500,
            height: 150,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return images[index];
              },
              itemCount: images.length,
            ),
          )
        ],
      ),
    );
  }
}
