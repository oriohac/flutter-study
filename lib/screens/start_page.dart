import 'package:flutter/material.dart';
import 'package:flutterstudy/screens/detail_page.dart';
import 'package:flutterstudy/screens/home_page.dart';
import 'package:flutterstudy/screens/profile_page.dart';

class Start extends StatefulWidget {
  Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  final List _screenList = [Home(), Profile(), Detail()];

  int selectedScreen = 0;

  void currentScreen(int state) {
    setState(() {
      selectedScreen = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 141, 90, 150),
        elevation: 0,
      ),
      body: _screenList[selectedScreen],
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 143, 102, 151),
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.add_task_rounded,
            color: Colors.white54,
            size: 60,
          )),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 28,
            ),
            title: Text(
              'H O M E',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            leading: Icon(
              Icons.person,
              color: Colors.white,
              size: 28,
            ),
            title: Text(
              'P R O F I L E',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/detail');
            },
            leading: Icon(
              Icons.info,
              color: Colors.white,
              size: 28,
            ),
            title: Text(
              'D E T A I L',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
          onTap: currentScreen,
          currentIndex: selectedScreen,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              label: 'PROFILE',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                size: 32,
              ),
              label: 'DETAIL',
            )
          ]),
    );
  }
}
