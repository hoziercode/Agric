// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:agric_solution/buttons/buttons.dart';

class HomeCardContainer extends StatelessWidget {
  const HomeCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 26.0,
        bottom: 20.0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 25.0,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFF39CA76),
          borderRadius: BorderRadius.all(
            Radius.circular(
              30.0,
            ),
          ),
        ),
        width: 367.0,
        height: 182.0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          child: Text(
                            '100',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          'Total Orders',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'Account Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '₦1,200.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        '₦3,000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'All Time Sales',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 150.0,
                  child: Buttons(
                      text: 'Withdraw',
                      onPress: () {},
                      colour: Colors.white,
                      color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
