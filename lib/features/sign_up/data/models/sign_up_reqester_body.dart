// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;
  // @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final int gender;

  SignupRequestBody({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    required this.gender,
  });

  // Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);

  SignupRequestBody copyWith({
    String? name,
    String? email,
    String? phone,
    String? password,
    String? passwordConfirmation,
    int? gender,
  }) {
    return SignupRequestBody(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'gender': gender,
    };
  }

  factory SignupRequestBody.fromMap(Map<String, dynamic> map) {
    return SignupRequestBody(
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      password: map['password'] as String,
      passwordConfirmation: map['password_confirmation'] as String,
      gender: map['gender'] as int,
    );
  }

  Map<String, dynamic> toJson() => toMap();

  factory SignupRequestBody.fromJson(String source) =>
      SignupRequestBody.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SignupRequestBody(name: $name, email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation, gender: $gender)';
  }

  @override
  bool operator ==(covariant SignupRequestBody other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.password == password &&
        other.passwordConfirmation == passwordConfirmation &&
        other.gender == gender;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        password.hashCode ^
        passwordConfirmation.hashCode ^
        gender.hashCode;
  }
}
