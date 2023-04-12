import '../cards/homeCardContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../cards/inbox_card.dart';
import '../cards/time_card.dart';
import '../cards/order_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const id = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            50.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset(
                            'images/Vector2.svg',
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Text('Omob wumi'),
                          const SizedBox(
                            width: 70.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 49.0),
                            child: Row(
                              children: const [
                                Icon(Icons.info),
                                Text('Pending Approval'),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const HomeCardContainer(),
                const InboxCard(
                  text: 'You have 1 new pending order',
                ),
                const InboxCard(
                  text: 'Upload a new farm product',
                ),
                const InboxCard(
                  text: 'Scan Plant for disease recognition',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TimeCard(
                        text: 'Today’s',
                        colour: Color(0xFF5DE898),
                      ),
                      TimeCard(
                        text: 'Monthly',
                      ),
                      TimeCard(
                        text: 'All Time',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      OrderCard(
                        firstText: '4',
                        secondText: 'New Order',
                        thirdText: '1',
                        fourtText: 'In Progress',
                      ),
                      OrderCard(
                        firstText: '15',
                        color: Color(0xFF5DE898),
                        secondText: 'Completed',
                        thirdText: '2',
                        colour: Color(0xFFEF5858),
                        fourtText: 'Cancelled',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
