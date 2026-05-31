import 'package:equatable/equatable.dart';

import 'datum.dart';

class GetAllCategoryModel extends Equatable {
  final int? code;
  final String? message;
  final List<Datum>? data;

  const GetAllCategoryModel({this.code, this.message, this.data});

  factory GetAllCategoryModel.fromJson(Map<String, dynamic> json) {
    return GetAllCategoryModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'code': code,
    'message': message,
    'data': data?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props => [code, message, data];
}
