import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool obscureText = true;
  final _controller = TextEditingController();
  String fullname = "";
  void setObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  void handleText(String text) {
    setState(() {
      fullname = text;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/proDetails.png",
                  height: 330,
                  width: 330,
                ),
                const Text(
                  "Signup",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 15),
                  child: Text(
                    "Please enter the details below to continue.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    controller: _controller,
                    onChanged: handleText,
                    decoration: InputDecoration(
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        fillColor: const Color.fromARGB(255, 228, 228, 228),
                        hintText: "Fullname",
                        prefixIcon: const Icon(Icons.person_outline),
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
                        fillColor: const Color.fromARGB(255, 228, 228, 228),
                        hintText: "Email Address",
                        prefixIcon: const Icon(Icons.mail_outline_rounded),
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 15),
                  child: TextField(
                    obscureText: obscureText ? false : true,
                    decoration: InputDecoration(
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        fillColor: const Color.fromARGB(255, 228, 228, 228),
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        suffixIcon: IconButton(
                            onPressed: setObscureText,
                            icon: obscureText
                                ? Icon(Icons.visibility_outlined)
                                : Icon(Icons.visibility_off_outlined)),
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                      width: 355,
                      height: 55,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrangeAccent),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15)))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                            handleText(_controller.text);
                            print(fullname);
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(fontSize: 17),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
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
                      ),
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
