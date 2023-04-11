import 'package:flutter/material.dart';
import '../screens/purchase_screen.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.image,
    required this.name,
    required this.from,
    this.price,
  });
  final String image;
  final String name;
  final String from;
  final String? price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PurchaseScreen.id);
              },
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                name,
                style: const TextStyle(
                  color: Color(0xFF252525),
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                from,
                style: const TextStyle(
                  color: Color(0xFF909092),
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                price ?? '',
                style: const TextStyle(
                  color: Color(0xFF5DE898),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
