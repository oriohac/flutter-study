import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/screens/login_page.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                // Name
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: 'Full Name',
                      hintText: AutofillHints.name,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                ),

                // email
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: AutofillHints.email,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                ),
                // Password
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: '********',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                  obscureText: true,
                ),
                // Button
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        fixedSize: const Size(300, 42)),
                    onPressed: () {
                      if (_emailController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Enter your email"),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                        ));
                      } else if (_passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Enter your password"),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                        ));
                      } else if (_passwordController.text.length < 6) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text(
                              "Password is too short, Must be up to six characters"),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                        ));
                      } else {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text)
                            .then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        }).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Error: $error")));
                        });
                      }
                    },
                    child: const Text("Signup"))
              ]),
        ),
      ),
    );
  }
}
