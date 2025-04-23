import 'package:json_annotation/json_annotation.dart';


class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String,dynamic> json){
    return ApiErrorModel(
        message: json['message'],
      code: json['code']
    );
  }
}