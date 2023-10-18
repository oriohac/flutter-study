import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        

            // email
            TextField(
              decoration: InputDecoration(
                hintText: AutofillHints.email,
                labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
            ),
            // Password
            TextField(
              decoration: InputDecoration(
                hintText: '********',
                labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
                      obscureText: true,
            ),
            // Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                fixedSize: Size(300, 42),
                backgroundColor: Colors.black,
              ),
              
                onPressed: () {
                  Navigator.pushNamed(
                    context, '/start'
                  );
                },
                child: Text("Login"))
          ]),
        ),
      ),
    );
  }
}
