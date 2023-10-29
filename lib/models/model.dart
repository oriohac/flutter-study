class UserModel {
  final int id;
  final String name;
  final int age;
  final String image;
  final String email;
  final bool alife;
  UserModel({
    required this.id,
    required this.name,
    required this.age,
    required this.image,
    required this.email,
    required this.alife,
  });
  factory UserModel.fromJson(dynamic json) {
    return UserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        age: json['age'] as int,
        image: json['image'] as String,
        email: json['email'] as String,
        alife: json['alive'] as bool);
  }
}

final chikedata = UserModel(
    id: 1,
    name: "Chikezirim Orioha",
    age: 27,
    image: 'lib/images/ance.png',
    email: 'oriohac@gmail,com',
    alife: true);

final List users = [
  {
    "id": 1,
    "name": "Chikezirim Orioha",
    "age": 27,
    "image": "lib/images/ance.png",
    "email": "oriohac@gmail,com",
    'alife': true,
  },
  {
    "id": 2,
    "name": "gift Orioha",
    "age": 23,
    "image": "lib/images/real.png",
    "email": "oka@gmail,com",
    'alife': true,
  },
  {
    "id": 3,
    "name": "Contaa ibbe",
    "age": 20,
    "image": "lib/images/alaba.png",
    "email": "ozeraa@ymail,com",
    'alife': false,
  },
  {
    "id": 4,
    "name": "Izunna Orioha",
    "age": 22,
    "image": "lib/images/ance.png",
    "email": "izium@gmail,com",
    'alife': true,
  },
  {
    "id": 5,
    "name": "Promise Shangy",
    "age": 19,
    "image": "lib/images/real.png",
    "email": "prom@email,com",
    'alife': false,
  },
  {
    "id": 6,
    "name": "Vic Para",
    "age": 24,
    "image": "lib/images/ance.png",
    "email": "prarw@gmail,com",
    'alife': false,
  },
  {
    "id": 7,
    "name": "Chike ike",
    "age": 23,
    "image": "lib/images/alaba.png",
    "email": "binome@gmail,com",
    'alife': true,
  },
  {
    "id": 8,
    "name": "Prince Orioha",
    "age": 32,
    "image": "lib/images/ance.png",
    "email": "crom@gmail,com",
    'alife': true,
  },
  {
    "id": 9,
    "name": "Usinh Peorm",
    "age": 26,
    "image": "lib/images/ance.png",
    "email": "usima@gmail,com",
    'alife': true,
  },
  {
    "id": 10,
    "name": "Pletoma Barry",
    "age": 25,
    "image": "lib/images/alaba.png",
    "email": "pletoma@gmail,com",
    'alife': true,
  },
    {
    "id": 11,
    "name": "Tora Barn",
    "age": 23,
    "image": "lib/images/ance.png",
    "email": "tiareo@gmail,com",
    'alife': false,
  },
  {
    "id": 12,
    "name": "Brian ike",
    "age": 23,
    "image": "lib/images/alaba.png",
    "email": "laden@gmail,com",
    'alife': true,
  },
  {
    "id": 13,
    "name": "Oman Pari",
    "age": 32,
    "image": "lib/images/ance.png",
    "email": "oman@gmail,com",
    'alife': true,
  },
  {
    "id": 14,
    "name": "Usinh Opas",
    "age": 26,
    "image": "lib/images/ance.png",
    "email": "opad@gmail,com",
    'alife': true,
  },
  {
    "id": 15,
    "name": "Isoa Barry",
    "age": 25,
    "image": "lib/images/alaba.png",
    "email": "iasd@gmail,com",
    'alife': true,
  },
];
