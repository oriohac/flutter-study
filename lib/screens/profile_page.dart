import 'package:flutter/material.dart';
import 'package:flutterstudy/models/model.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(chikedata.image),
            ),
            title: Text(users[2]['name'],style: TextStyle(fontFamily: 'Satoshi' ,fontSize: 22),),
            subtitle: Text("Email: ${users[2]['email']}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          ),
          Divider(),
          Card(
            margin: EdgeInsets.fromLTRB(8, 4, 8, 0),
            elevation: 2,
            color: Color.fromARGB(234, 228, 228, 228),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    users[0]['image'],
                    scale: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name: ${users[0]['name']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Age: ${users[0]['age']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Email: ${users[0]['email']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'ID: ${users[2]['id']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        if (users[0]['alife'] == true)
                          
                            const Text(
                              'Status: Alife', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            )
                          else
                          const Text(
                              'Status: Dead', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.start,
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
