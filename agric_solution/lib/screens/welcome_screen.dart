import 'package:agric_solution/screens/SignUpScreens/SignUp_screen.dart';
import 'package:flutter/material.dart';
import '../buttons/buttons.dart';
import '../screens/login_screen.dart';

const assetName = 'images/background (1).png';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome-screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> images = [
    'images/background (1).png',
    'images/background (2).png'
  ];

  List<Map<String, String>> data = [
    {
      "title": "As a customer, you can",
      "content":
          "Order healthy fresh farm produce \nfrom vasrieties on our app."
    },
    {
      "title": "As a farmer, you can",
      "content": "Upload your farm produce and\n get orders from customers."
    }
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 360.0,
                          width: 327.0,
                          child: PageView.builder(
                            onPageChanged: (value) {
                              setState(() {
                                currentIndex = value;
                              });
                            },
                            itemBuilder: (context, index) {
                              return Image.asset(images[index]);
                            },
                            itemCount: images.length,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            bottom: 20.0,
                          ),
                          child: Text(
                            data[currentIndex]["title"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 23.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            data[currentIndex]["content"]!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              height: 1.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                List<Widget>.generate(images.length, (index) {
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: currentIndex == index ? 30.0 : 8.0,
                                height: 6.0,
                                margin: const EdgeInsets.only(left: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  color: currentIndex == index
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Buttons(
                  color: Colors.white,
                  onPress: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  colour: const Color(0xFF5DE898),
                  text: 'Login',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Buttons(
                  color: const Color(0xFF5DE898),
                  onPress: () {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  colour: Colors.white,
                  text: 'Sign Up',
                  border: Border.all(
                    color: const Color(0xFF5DE898),
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
