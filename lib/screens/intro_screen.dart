import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color color = Color.fromARGB(255, 28, 121, 198);
    double paddingY = MediaQuery.of(context).size.height;
    // double paddingX = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: paddingY * 0.7),
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/landscape.jpg"), fit: BoxFit.cover)),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8),
            child: Text(
              "Stay informed with the latest News",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 15),
            child: Text(
              "Discover the latest News with our seamless onboarding experience.",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
                width: 350,
                height: 47,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(color),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text("Let's Get Started"))),
          )
        ],
      ),
    ));
  }
}
