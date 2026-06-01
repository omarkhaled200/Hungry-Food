import 'package:equatable/equatable.dart';

import 'searchdata.dart';

class SearchProductModel extends Equatable {
  final int? code;
  final String? message;
  final List<searchdata>? data;

  const SearchProductModel({this.code, this.message, this.data});

  factory SearchProductModel.fromJson(Map<String, dynamic> json) {
    return SearchProductModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => searchdata.fromJson(e as Map<String, dynamic>))
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
