import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationData?>? specializationData;
  SpecializationResponseModel({this.specializationData});
  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors>? doctors;
  SpecializationData({this.id, this.name, this.doctors});

  factory SpecializationData.fromJsom(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);

  static fromJson(Map<String, dynamic> e) {}
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  @JsonKey(name: 'appoint_price')
  int? price;
  final String degree;
  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      required this.degree,
      this.price});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
