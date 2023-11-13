import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordControoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.transparent),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // email
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      hintText: AutofillHints.email,
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                ),
                // Password
                TextField(
                  controller: _passwordControoller,
                  decoration: const InputDecoration(
                      hintText: '********',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                  obscureText: true,
                ),
                // Button
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      fixedSize: const Size(300, 42),
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                         if (_emailController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Enter your email"),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                        ));
                      } else if (_passwordControoller.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Enter your password"),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                        ));
                      } else {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordControoller.text)
                          .then((value) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Login Success"),
                          behavior: SnackBarBehavior.floating,
                        ));

                        Navigator.pushNamed(context, '/start');
                      }).onError((error, stackTrace) {
                        ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                          content: Text("E R R O R: $error"),
                          behavior: SnackBarBehavior.floating,
                        ));
                      });}
                    },
                    child: const Text("Login"))
              ]),
        ),
      ),
    );
  }
}
