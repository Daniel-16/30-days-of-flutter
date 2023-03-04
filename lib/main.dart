import 'package:flutter/material.dart';
import 'package:flutter_practice/helper/shared_pref_helper.dart';
import 'package:flutter_practice/home_page.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/pages/sigup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferenceHelper.prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const MyHomePage(title: "Flutter App"),
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignupPage()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SharedPreferenceHelper.prefs?.getBool("loggedIn") == true
          ? const MyHomePage(title: "Flutter App")
          : const LoginPage(),
      // const MyHomePage(title: 'Flutter Practice'),
    );
  }
}
