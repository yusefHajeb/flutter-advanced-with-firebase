import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_response_model.g.dart';

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
class SpecializationResponseModel {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;

  SpecializationResponseModel({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name: 'appoint_price')
  int? price;
  String degree;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    required this.degree,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}
