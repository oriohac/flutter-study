import 'package:flutter/material.dart';
import 'package:flutterstudy/screens/detail_page.dart';
import 'package:flutterstudy/screens/home_page.dart';
import 'package:flutterstudy/screens/profile_page.dart';
import 'package:flutterstudy/screens/users_page.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  final List _screenList = [const Home(), const Profile(), const Detail(), const UserData()];

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
        backgroundColor: const Color.fromARGB(255, 141, 90, 150),
        elevation: 0,
      ),
      body: _screenList[selectedScreen],
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 143, 102, 151),
        child: Column(children: [
          const DrawerHeader(
              child: Icon(
            Icons.add_task_rounded,
            color: Colors.white54,
            size: 60,
          )),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            leading: const Icon(
              Icons.home,
              color: Colors.white,
              size: 28,
            ),
            title: const Text(
              'H O M E',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            leading: const Icon(
              Icons.person,
              color: Colors.white,
              size: 28,
            ),
            title: const Text(
              'P R O F I L E',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/detail');
            },
            leading: const Icon(
              Icons.info,
              color: Colors.white,
              size: 28,
            ),
            title: const Text(
              'D E T A I L',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
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
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.verified_user_sharp,
                size: 32,
              ),
              label: 'USERS',
            )
          ]),
    );
  }
}
