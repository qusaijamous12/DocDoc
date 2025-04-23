
import 'package:json_annotation/json_annotation.dart';
part 'register_request.g.dart';


@JsonSerializable()
class RegisterRequest {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  RegisterRequest(
      this.phone,
      this.password,
      this.email,
      this.name,
      this.gender,
      this.passwordConfirmation,
      );


  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}