import 'package:flutter/material.dart';
import 'package:flutterstudy/screens/detail_page.dart';
import 'package:flutterstudy/screens/home_page.dart';
import 'package:flutterstudy/screens/login_page.dart';
import 'package:flutterstudy/screens/profile_page.dart';
import 'package:flutterstudy/screens/signup_page.dart';
import 'package:flutterstudy/screens/start_page.dart';
import 'package:flutterstudy/screens/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/detail': (context) => const Detail(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/start': (context) => Start(),
        '/welcome': (context) => const Welcome(),
      },
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
      theme: ThemeData(),
    );
  }
}
