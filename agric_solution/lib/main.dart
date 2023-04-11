// ignore_for_file: equal_keys_in_map

import 'package:agric_solution/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:agric_solution/screens/login_screen.dart';
import './screens/SignUpScreens/SignUp_screen.dart';
import './screens/SignUpScreens/signUp_screen2.dart';
import './screens/SignUpScreens/signUp_screen3.dart';
import './screens/SignUpScreens/signUp_screen4.dart';
import './screens/Store_screen.dart';
import './screens/purchase_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        SignUpScreen2.id: (context) => const SignUpScreen2(),
        SignUpScreen3.id: (context) => const SignUpScreen3(),
        SignUpScreen4.id: (context) => const SignUpScreen4(),
        StoreScreen.id: (context) => const StoreScreen(),
         PurchaseScreen.id: (context) => const PurchaseScreen(),
      },
    );
  }
}
