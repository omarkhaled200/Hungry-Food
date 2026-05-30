import 'package:equatable/equatable.dart';

import 'data.dart';

class RegisterModel extends Equatable {
  final String? code;
  final String? message;
  final Data? data;

  const RegisterModel({this.code, this.message, this.data});

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    code: json['code'] as String?,
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
