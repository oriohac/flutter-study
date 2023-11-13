import 'package:flutter/material.dart';
import 'package:flutterstudy/models/model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            for (int i = 0; i < users.length; i++)
              ListTile(
                shape: Border.all(width: 2.0, color: Colors.black45),
                leading: CircleAvatar(
                  child: Image.asset(users[i]['image']),
                ),
                title: Text('${users[i]['name']}'),
                subtitle: Text('${users[i]['email']}'),
                trailing: Text(TimeOfDay.now().format(context)),
              ),
          ],
        ),
      ),
    );
  }
}
