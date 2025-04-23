import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final String message;

  @JsonKey(name: 'data')
  final UserData userData;

  final bool status;
  final int code;

  LoginResponseModel({
    required this.message,
    required this.userData,
    required this.status,
    required this.code,
  });


  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class UserData {
  final String token;
  @JsonKey(name: 'username')
  final String userName;

  UserData({
    required this.userName,
    required this.token,
  });

  // From JSON
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  // To JSON
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

