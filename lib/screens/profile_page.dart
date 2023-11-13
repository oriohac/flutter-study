import 'dart:convert';
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/models/model.dart';
import 'package:http/http.dart' as http;

Future<UserModelApi> getUsers() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if (response.statusCode == 200) {
    return UserModelApi.fromJson(
        jsonDecode(response.body)[9] );
  } else {
    throw Exception('Failed to load users');
  }
}

class UserModelApi {
  final int id;
  final String username;
  final String email;
  final String phone;
  final String website;
  const UserModelApi({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });
  factory UserModelApi.fromJson(Map<String, dynamic> json) {
    return UserModelApi(
        id: json['id'] as int,
        username: json['username'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        website: json['website'] as String);
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late Future<UserModelApi> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(chikedata.image),
            ),
            title: Text(
              users[2]['name'],
              style: const TextStyle(fontFamily: 'Satoshi', fontSize: 22),
            ),
            subtitle: Text("Email: ${users[2]['email']}",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          ),
          const Divider(),
          Card(
            margin: const EdgeInsets.fromLTRB(8, 4, 8, 0),
            elevation: 2,
            color: const Color.fromARGB(234, 228, 228, 228),
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
                          'Name: ${users[0]['name']}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Age: ${users[0]['age']}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Email: ${users[0]['email']}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'ID: ${users[2]['id']}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        if (users[0]['alife'] == true)
                          const Text(
                            'Status: Alife',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          )
                        else
                          const Text(
                            'Status: Dead',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 62,
            width: 280,
            decoration: const BoxDecoration(
                color: Color.fromARGB(12, 234, 200, 234),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: ElevatedButton(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.exit_to_app_sharp,
                    size: 24,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )
                ],
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("We'll be expecting you back"),
                    behavior: SnackBarBehavior.floating,
                  ));
                  Navigator.pop(context, '/login');
                });
              },
            ),
          ),
          FutureBuilder<UserModelApi>(
            future: futureUser,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.username);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          )
        ],
      ),
    );
  }
}
