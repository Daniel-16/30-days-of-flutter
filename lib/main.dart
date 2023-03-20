import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/home_screen.dart';
import 'package:flutter_practice/screens/intro_screen.dart';
import 'package:flutter_practice/screens/login_screen.dart';
import 'package:flutter_practice/screens/signup_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      initialRoute: '/intro',
      routes: {
        '/intro': (context) => const IntroScreen(),
        '/login': (context) => const LoginScreen(),
        '/': (context) => const HomePage(),
        '/signup': (context) => const SignupScreen(),
      },
    );
  }
}
