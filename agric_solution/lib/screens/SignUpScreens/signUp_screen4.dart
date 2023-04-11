// ignore_for_file: file_names

import 'package:agric_solution/buttons/buttons.dart';
import 'package:agric_solution/buttons/input_button.dart';
import 'package:agric_solution/screens/Store_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen4 extends StatefulWidget {
  const SignUpScreen4({super.key});

  static const id = 'SignUp-screen4';
  @override
  State<SignUpScreen4> createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                            ),
                          ),
                          const Text(
                            '4 of 4',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          bottom: 10.0,
                        ),
                        child: Text(
                          'Let’s get you started!',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 25.0),
                        child: Text(
                          'Create an account to start enjoying our service.',
                          style: TextStyle(
                            color: Color(0xFF76777D),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8.0, left: 6.0),
                        child: MyText(
                          text: 'Full Name',
                        ),
                      ),
                      const InputButton(
                        boder1: BorderRadius.all(Radius.circular(5.0)),
                        boder2: BorderRadius.all(Radius.circular(5.0)),
                        boder3: BorderRadius.all(Radius.circular(5.0)),
                        hinttext: 'example@gmail.com',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 6.0,
                          top: 15.0,
                        ),
                        child: MyText(
                          text: 'Email Address',
                        ),
                      ),
                      const InputButton(
                        boder1: BorderRadius.all(Radius.circular(5.0)),
                        boder2: BorderRadius.all(Radius.circular(5.0)),
                        boder3: BorderRadius.all(Radius.circular(5.0)),
                        hinttext: 'example@gmail.com',
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 6.0,
                          top: 15.0,
                        ),
                        child: MyText(
                          text: 'Password',
                        ),
                      ),
                      const InputButton(
                        boder1: BorderRadius.all(Radius.circular(5.0)),
                        boder2: BorderRadius.all(Radius.circular(5.0)),
                        boder3: BorderRadius.all(Radius.circular(5.0)),
                        hinttext: 'minimum of eight digit',
                        chose: true,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                          left: 6.0,
                          top: 15.0,
                        ),
                        child: MyText(
                          text: 'Password',
                        ),
                      ),
                      const InputButton(
                        boder1: BorderRadius.all(Radius.circular(5.0)),
                        boder2: BorderRadius.all(Radius.circular(5.0)),
                        boder3: BorderRadius.all(Radius.circular(5.0)),
                        chose: true,
                        hinttext: 'minimum of eight digit',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 400.0,
                          child: Buttons(
                            text: 'Sign Up',
                            onPress: () {
                              Navigator.pushNamed(context, StoreScreen.id);
                            },
                            colour: const Color(0xFF5DE898),
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Don’t have an account?',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF76777D),
                                ),
                              ),
                              Text(
                                ' Create account',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5DE898),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
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

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    this.text,
  });

  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFF484A51),
      ),
    );
  }
}
