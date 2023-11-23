import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Welcome to Chelseaplug FC",
            style: TextStyle(fontFamily: 'Satoshi', fontSize: 28),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              fixedSize: const Size(180, 34),
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: const Text('Signup'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'If you`ve registered,',
                textAlign: TextAlign.center,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: const Text("Login"))
            ],
          )
        ]),
      ),
    );
  }
}
