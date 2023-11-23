import 'dart:convert';
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List dogs = ['rottweiler', 'bulldog', 'akita', 'eskimo'];
int nums = Random().nextInt(dogs.length);

Future<DogApi> getDog() async {
  var response =
      await http.get(Uri.parse('https://dog.ceo/api/breed/${dogs[nums]}/images'));
  if (response.statusCode == 200) {
    return DogApi.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Could not get dogs');
  }
}

class DogApi {
  final List<dynamic> message;
  final String status;
  DogApi({
    required this.message,
    required this.status,
  });

  factory DogApi.fromJson(Map<String, dynamic> json) {
    return DogApi(
        message: json['message'] as List<dynamic>,
        status: json['status'] as String);
  }
}

Future<List<UserDetail>> getUser() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if (response.statusCode == 200) {
    List<dynamic> listData = jsonDecode(response.body);
    List<UserDetail> mainData =
        listData.map((json) => UserDetail.fromJson(json)).toList();
    return mainData;
  } else {
    throw Exception("Could Not Load Data");
  }
}

class UserDetail {
  final int id;
  final String username;
  final String email;
  final String phone;
  final String website;
  UserDetail(
      {required this.id,
      required this.username,
      required this.email,
      required this.phone,
      required this.website});
  factory UserDetail.fromJson(Map<String, dynamic> json) {
    return UserDetail(
        id: json['id'] as int,
        username: json['username'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        website: json['website'] as String);
  }
}

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  // late Future<List<UserDetail>> user;
  late Future<DogApi> dogi;
  @override
  void initState() {
    super.initState();
    // user = getUser();
    dogi = getDog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<DogApi>(
            future: dogi,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.message.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.network(
                            snapshot.data!.message[index].toString(),
                          ),
                          Text(snapshot.data!.status)
                        ],
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
