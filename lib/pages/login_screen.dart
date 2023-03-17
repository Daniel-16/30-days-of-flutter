import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/proDetails.png",
                height: 330,
                width: 330,
              ),
              Text(
                "Login Now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 15),
                child: Text(
                  "Please enter the details below to continue.",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      fillColor: Color.fromARGB(255, 228, 228, 228),
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.mail_outline_outlined),
                      border: InputBorder.none),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 15),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      fillColor: Color.fromARGB(255, 228, 228, 228),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: InputBorder.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                    width: 300,
                    height: 45,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepOrangeAccent),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 17),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    Text(
                      "Register",
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    ),
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
