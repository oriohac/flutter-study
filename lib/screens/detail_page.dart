import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail Page, I will apply a font on this!!!',style: TextStyle(fontFamily: 'Satoshi', fontSize: 24),textAlign: TextAlign.center,),
            
          ],
        ),
      ),
    );
  }
}
