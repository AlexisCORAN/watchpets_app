import 'package:cloud_firestore/cloud_firestore.dart';

class Pet {
  String petName, petType, petBreed;
  int petAge;

  Pet(
      {required this.petName,
      required this.petType,
      required this.petBreed,
      required this.petAge});

  Map<String, dynamic> toMap() {
    return {
      'petName': petName,
      'petType': petType,
      'petBreed': petBreed,
      'petAge': petAge,
    };
  }
}
