import '../cards/top_bar.dart';
import 'package:flutter/material.dart';
import '../cards/food_card.dart';
import '../cards/home_card.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  static const id = 'Home_Screen';

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<Widget> food = [
    const FoodCard(
      image: 'images/food.png',
      price: '₦3,500.00',
      name: 'Fry pasta & chic...',
      from: 'Cellas Kitchen',
    ),
    const FoodCard(
      image: 'images/food1.png',
      price: '₦3,500.00',
      name: 'Fry pasta & chic...',
      from: 'Cellas Kitchen',
    ),
    const FoodCard(
      image: 'images/food3.png',
      price: '₦3,500.00',
      name: 'Fry pasta & chic...',
      from: 'Cellas Kitchen',
    ),
    const FoodCard(
      image: 'images/food1.png',
      price: '₦3,500.00',
      name: 'Fry pasta & chic...',
      from: 'Cellas Kitchen',
    ),
    const FoodCard(
      image: 'images/food.png',
      price: '₦3,500.00',
      name: 'Fry pasta & chic...',
      from: 'Cellas Kitchen',
    )
  ];

  List<Widget> items = [
    const FoodCard(
      image: 'images/top.png',
      name: 'Cellas Kitchen',
      from: 'Orita Naira',
      //price: '',
    ),
    const FoodCard(
      image: 'images/top1.png',
      name: 'Samsun Fant...',
      from: 'Under G',
      //price: '',
    ),
    const FoodCard(
      image: 'images/top2.png',
      name: 'Cellas Kitchen',
      from: 'Sabo Area',
      //price: '',
    ),
    const FoodCard(
      image: 'images/top.png',
      name: 'Chicken Place',
      from: 'Orita Naira',
      //price: '',
    ),
    const FoodCard(
      image: 'images/top2.png',
      name: 'Samsun Fant...',
      from: 'Under G',
      //price: '',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: SingleChildScrollView(
                child: HomeCard(food: food, items: items),
              ),
            ),
            const TopBar(),
          ],
        ),
      ),
    );
  }
}
