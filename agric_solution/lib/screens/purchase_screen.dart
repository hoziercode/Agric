import 'package:agric_solution/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  static const id = 'Purchase_Screen';

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  int count = 1;

  void increase() {
    setState(() {
      if (count == 1) {
        count++;
      } else {
        count++;
      }
    });
  }

  void decrease() {
    setState(() {
      if (count == 1) {
        count = 1;
      } else {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15.0,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          radius: 19.0,
                          backgroundColor: Color(
                            0xFFE7F7EE,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Color(
                              0xFF39CA76,
                            ),
                            size: 18.0,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 100.0),
                        child: Text(
                          'Foods',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF111111)),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 260.0,
                    child: Image.asset('images/coffe.png'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 6.0),
                      child: Text(
                        'Cofee Beans',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFF39CA76),
                        radius: 20.0,
                        child: SvgPicture.asset(
                          'images/Vector1.svg',
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Cellas farms',
                    style: TextStyle(
                      color: Color(0xFF909092),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        '₦2,500/bag',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xFF39CA76),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              increase();
                            },
                            child: const CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Color(0xFFE7F7EE),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFF39CA76),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                            ),
                            child: Text(
                              count.toString(),
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              decrease();
                            },
                            child: const CircleAvatar(
                              backgroundColor: Color(0xFFE7F7EE),
                              radius: 15.0,
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFF39CA76),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: const Color(0xFF39CA76),
                      child: SvgPicture.asset('images/Vector.svg'),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.0,
                            right: 5.0,
                          ),
                          child: Text(
                            '25 bags',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF252525),
                            ),
                          ),
                        ),
                        Text(
                          'left',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6C6C6C),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 8.0,
                    bottom: 20.0,
                  ),
                  child: Text(
                    'This is 100% brown tea',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF909092),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 400.0,
                    child: Buttons(
                      text: 'Currently Unavailable',
                      onPress: () {},
                      colour: const Color(0xFFECF9F1),
                      color: const Color(0xFF9BE8BB),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: SizedBox(
                    width: 400.0,
                    child: Buttons(
                      border: Border.all(
                        color: const Color(0xFF5DE898),
                      ),
                      text: 'Notify me when available',
                      onPress: () {},
                      colour: Colors.white,
                      color: const Color(0xFF39CA76),
                    ),
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
