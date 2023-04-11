// ignore_for_file: file_names

import 'package:agric_solution/buttons/buttons.dart';
import 'package:agric_solution/buttons/input_button.dart';
import 'package:flutter/material.dart';
import '../SignUpScreens/signUp_screen3.dart';

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({super.key});

  static const id = 'SignUp-screen2';
  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      '2 of 4',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    bottom: 13.0,
                  ),
                  child: Text(
                    'Enter your email',
                    style: TextStyle(
                      color: Color(0xFF1A1D26),
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    'We’ll send 4 digits verification code to the\n provided email address to verify email.',
                    style: TextStyle(
                      color: Color(0xFF76777D),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    bottom: 8.0,
                    left: 6.0,
                  ),
                  child: Text(
                    'Email Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const InputButton(
                  hinttext: 'example@gmail.com',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Buttons(
                        text: 'Next',
                        onPress: () {
                          Navigator.pushNamed(context, SignUpScreen3.id);
                        },
                        colour: const Color(0xFF5DE898),
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
