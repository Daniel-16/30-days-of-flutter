import 'package:flutter/material.dart';
import 'package:flutter_practice/helper/shared_pref_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _userEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  String email = "";
  void handleEmail(email) {
    setState(() {
      this.email = email;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: Center(
          child: SingleChildScrollView(
              child: Form(
            key: formKey,
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset(
                      "assets/signin.png",
                    ),
                    TextFormField(
                      controller: _userEmailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: "Email Address",
                          hintText: "Enter your email address"),
                    ),
                    if (email != 'user@mail.com') const Text("Email not valid"),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password to login"),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        String email = _userEmailController.text;
                        handleEmail(email);
                        if (email == "user@mail.com") {
                          SharedPreferenceHelper.prefs
                              ?.setBool("loggedIn", true);
                          Navigator.pushReplacementNamed(context, "/home");
                        } else {
                          print("Could not login");
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Text("Login"),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
