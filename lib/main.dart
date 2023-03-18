import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/intro_screen.dart';
import 'package:flutter_practice/pages/login_screen.dart';
import 'package:flutter_practice/pages/signup_screen.dart';

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
