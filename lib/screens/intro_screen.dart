import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/food3.jpg",
                  height: 350,
                  width: 350,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20, top: 15),
                child: Text(
                  "Order with One Click.",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Text(
                  "We make it easy for you to order food. You do not need to leave the comfort of your home to get something to eat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 138, 138, 138)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 150,
                  height: 45,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.deepOrangeAccent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 17),
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.deepOrangeAccent),
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
