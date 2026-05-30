import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? token;
  final String? name;
  final String? email;
  final String? image;

  const Data({this.token, this.name, this.email, this.image});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json['token'] as String?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    image: json['image'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'token': token,
    'name': name,
    'email': email,
    'image': image,
  };

  @override
  List<Object?> get props => [token, name, email, image];
}
