import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    bool isButtonClicked = false;

    void toggleButton() {
      setState(() {
        isButtonClicked = !isButtonClicked;
      });
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black)),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/signup.png"),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Email address",
                          prefixIcon: Icon(Icons.alternate_email)),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Full name",
                          prefixIcon: Icon(Icons.person)),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: Icon(Icons.visibility_off_outlined),
                          prefixIcon: Icon(Icons.lock_open_rounded)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "By signing up, you agree to our Terms and Conditions and Privacy Policy",
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      height: 45,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          onPressed: () {
                            toggleButton;
                            print(isButtonClicked);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: isButtonClicked
                                    ? const CircularProgressIndicator(
                                        backgroundColor: Colors.white,
                                      )
                                    : const SizedBox(),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Sign up",
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 78,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Joined us before?",
                            style: TextStyle(color: Colors.black54),
                          ),
                          const Padding(padding: EdgeInsets.all(2.5)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
