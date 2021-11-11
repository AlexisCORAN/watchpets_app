import 'package:uuid/uuid.dart';
import 'dart:convert';

class Pet {
  /// The class Pet is the information about a Pet.

  final String petId = Uuid().v1();
  String petName, petType, petBreed;
  int petAge;

  Pet(
      {petId,
      required this.petName,
      required this.petType,
      required this.petBreed,
      required this.petAge});

  factory Pet.fromJson(String str) => Pet.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pet.fromMap(Map<String, dynamic> json) => Pet(
        petId: json['petId'],
        petName: json['petName'],
        petType: json['petType'],
        petBreed: json['petBreed'],
        petAge: json['petAge'],
      );

  Map<String, dynamic> toMap() => {
        "petId": petId,
        "petAge": petAge,
        "petName": petName,
        "petBreed": petBreed,
        "petType": petType,
      };
}
