

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.transparent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            // Name
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                hintText: AutofillHints.name,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
                      
            ),

            // email
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: AutofillHints.email,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
            ),
            // Password
            TextField(
              decoration: InputDecoration(
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                fixedSize: Size(300, 42)
              ),
                onPressed: () {
                  Navigator.pushNamed(
                    context, '/login'
                  );
                },
                child: Text("Signup"))
          ]),
        ),
      ),
    );
  }
}
