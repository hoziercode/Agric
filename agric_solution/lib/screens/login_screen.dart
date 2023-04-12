import 'package:agric_solution/screens/SignUpScreens/SignUp_screen.dart';
import 'package:agric_solution/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../buttons/buttons.dart';
import '../buttons/input_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const id = 'login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color(0xFFF4F4F4),
                      radius: 25.0,
                      child: Icon(
                        Icons.close,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 50.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    'Welcome\n back!',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    'Login to your existing account to place your\n order.',
                    style: TextStyle(
                      color: Color(0xFF9F9F9F),
                      fontSize: 15.0,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0, left: 6.0),
                  child: Text(
                    'Email Adress',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const InputButton(
                  hinttext: 'example@gmail.com',
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 12.0,
                    bottom: 8.0,
                    left: 6.0,
                  ),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const InputButton(
                  hinttext: 'Password',
                  chose: true,
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 15.0, bottom: 35.0, right: 10.0),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color(0xFF5DE898),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                Buttons(
                  text: 'Login',
                  onPress: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                  colour: const Color(0xFF5DE898),
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0, left: 56.0),
                  child: Row(
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF76777D),
                          fontSize: 15.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: const Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF5DE898),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
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
