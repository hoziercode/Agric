// ignore_for_file: file_names

import 'package:agric_solution/buttons/buttons.dart';
import 'package:agric_solution/screens/SignUpScreens/signUp_screen4.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SignUpScreen3 extends StatefulWidget {
  const SignUpScreen3({super.key});

  static const id = 'SignUp-screen3';

  @override
  State<SignUpScreen3> createState() => _SignUpScreen3State();
}

class _SignUpScreen3State extends State<SignUpScreen3> {
  int heightNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                        const Text(
                          '3 of 4',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 30.0,
                        bottom: 10.0,
                      ),
                      child: Text(
                        'Enter verification code',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Text(
                      'Enter the 4 digits verification code sent to',
                      style: TextStyle(
                        color: Color(0xFF717176),
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Text(
                      'adeyeratriumph@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Center(
                        child: Pinput(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400.0,
                      child: Buttons(
                        text: 'Verify',
                        onPress: () {
                          Navigator.pushNamed(context, SignUpScreen4.id);
                        },
                        colour: const Color(0xFF5DE898),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Didn’t receive code?',
                            style: TextStyle(
                              color: Color(0xFF76777D),
                            ),
                          ),
                          Text(
                            ' Resend',
                            style: TextStyle(
                              color: Color(0xFF5DE898),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
