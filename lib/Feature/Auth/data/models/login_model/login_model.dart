import 'package:equatable/equatable.dart';

import 'data.dart';

class LoginModel extends Equatable {
  final int? code;
  final String? message;
  final Data? data;

  const LoginModel({this.code, this.message, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    code: json['code'] as int?,
    message: json['message'] as String?,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'code': code,
    'message': message,
    'data': data?.toJson(),
  };

  @override
  List<Object?> get props => [code, message, data];
}
