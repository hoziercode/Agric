import 'package:flutter/material.dart';
import '../cards/card_container.dart';
class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.food,
    required this.items,
  });

  final List<Widget> food;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset('images/ads.png'),
          ),
          CardContainer(
            images: food,
            topic: 'Lastest',
            right: 0.0,
            top: 23.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CardContainer(
              images: items,
              topic: 'Top rated Farms',
              right: 15.0,
              top: 23.0,
            ),
          ),
          CardContainer(
            images: food,
            topic: 'Picks for you',
            right: 0.0,
            top: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CardContainer(
              images: items,
              topic: 'Your Favourite farmers',
              right: 15.0,
              top: 23.0,
              subtopic:
                  'Here are the brands you use the most on Rideeat.,',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset('images/ads.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CardContainer(
              images: items,
              topic: 'Most Patronized Farms',
              right: 15.0,
              top: 23.0,
              subtopic:
                  'Here are the 5 brand you use the most on Rideeat.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CardContainer(
              images: food,
              topic: 'Most Ordered Foods',
              right: 15.0,
              top: 23.0,
              subtopic:
                  'Here are the 5 foods you ordered the most on Rideeat.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 30.0,
            ),
            child: Image.asset('images/ads.png'),
          ),
        ],
      ),
    );
  }
}
