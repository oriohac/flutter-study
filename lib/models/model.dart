class UserModel {
  final int id;
  final String name;
  final int age;
  final String image;
  final String email;
  UserModel({
    required this.id,
    required this.name,
    required this.age,
    required this.image,
    required this.email,
  });
}

final chikedata = UserModel(
    id: 1,
    name: "Chikezirim Orioha",
    age: 27,
    image: 'lib/images/ance.png',
    email: 'oriohac@gmail,com');
