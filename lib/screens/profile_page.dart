import 'package:flutter/material.dart';
import 'package:flutterstudy/models/model.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(chikedata.image),
                  ),
                  title: Text(chikedata.name),
                  subtitle: Text("Email: ${chikedata.email}"),
                ),
                Divider(),
            Container(
              margin: EdgeInsets.fromLTRB(8, 4, 8, 0),
              height: 300,
              width: 400,
              
              decoration: BoxDecoration(color: Color.fromARGB(234, 228, 228, 228),borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    chikedata.image,
                    scale: 2,
                  ),
                  Text(
                    'Name: ${chikedata.name}',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Age: ${chikedata.age}',
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Email: ${chikedata.email}',
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'ID: ${chikedata.id}',
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
