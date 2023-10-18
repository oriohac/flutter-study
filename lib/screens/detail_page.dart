import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail',textAlign: TextAlign.center,),
            Image.asset('lib/images/real.png',scale: 5,)
          ],
        ),
      ),
    );
  }
}
