import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/screens/intro_screen.dart';
import 'package:flutter_practice/screens/news_details.dart';

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
      theme: ThemeData(textButtonTheme: TextButtonThemeData(style:
          ButtonStyle(overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.transparent;
          }
          return null;
        },
      )))),
      initialRoute: '/intro',
      routes: {
        '/intro': (context) => const IntroScreen(),
        '/': (context) => const HomePage(),
        // '/newsdetails': (context) => const NewsDetails()
      },
    );
  }
}
