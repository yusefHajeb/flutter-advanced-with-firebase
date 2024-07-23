// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SignupResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  SignupResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  // factory SignupResponse.fromJson(Map<String, dynamic> json) =>
  // _$SignupResponseFromJson(json);

  SignupResponse copyWith({
    String? message,
    UserData? userData,
    bool? status,
    int? code,
  }) {
    return SignupResponse(
      message: message ?? this.message,
      userData: userData ?? this.userData,
      status: status ?? this.status,
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'data': userData?.toMap(),
      'status': status,
      'code': code,
    };
  }

  factory SignupResponse.fromMap(Map<String, dynamic> map) {
    return SignupResponse(
      message: map['message'] != null ? map['message'] as String : null,
      userData: map['data'] != null
          ? UserData.fromMap(map['data'] as Map<String, dynamic>)
          : null,
      status: map['status'] != null ? map['status'] as bool : null,
      code: map['code'] != null ? map['code'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupResponse.fromJson(Map<String, dynamic> _result) =>
      SignupResponse.fromMap(_result);

  @override
  String toString() {
    return 'SignupResponse(message: $message, userData: $userData, status: $status, code: $code)';
  }

  @override
  bool operator ==(covariant SignupResponse other) {
    if (identical(this, other)) return true;

    return other.message == message &&
        other.userData == userData &&
        other.status == status &&
        other.code == code;
  }

  @override
  int get hashCode {
    return message.hashCode ^
        userData.hashCode ^
        status.hashCode ^
        code.hashCode;
  }
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData({
    this.token,
    this.userName,
  });

  UserData copyWith({
    String? token,
    String? userName,
  }) {
    return UserData(
      token: token ?? this.token,
      userName: userName ?? this.userName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'userName': userName,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      token: map['token'] != null ? map['token'] as String : null,
      userName: map['userName'] != null ? map['userName'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserData(token: $token, userName: $userName)';

  @override
  bool operator ==(covariant UserData other) {
    if (identical(this, other)) return true;

    return other.token == token && other.userName == userName;
  }

  @override
  int get hashCode => token.hashCode ^ userName.hashCode;
}
