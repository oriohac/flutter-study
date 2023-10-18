import 'package:flutter/material.dart';
import 'package:flutterstudy/screens/signup_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Welcome to Chelseaplug FC",
            style: TextStyle(fontFamily: 'Satoshi', fontSize: 28),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              fixedSize: Size(180, 34),
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text('Signup'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'If you`ve registered,',
                textAlign: TextAlign.center,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text("Login"))
            ],
          )
        ]),
      ),
    );
  }
}
