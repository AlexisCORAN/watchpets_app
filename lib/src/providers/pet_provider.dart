/**
import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watchpets/src/models/pets.dart';

class PetController with ChangeNotifier {
  List<Pet> _petList = [];
  late Pet _currentPet;

  UnmodifiableListView<Pet> get petList => UnmodifiableListView(_petList);
  set currentPet(Pet pet) {
    _currentPet = pet;
    notifyListeners();
  }

  getPets() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection("pets").get();
    for (var element in snapshot.docs) {
      Pet pet = Pet.fromMap(element.data() as Map<String, dynamic>);
      _petList.add(pet);
    }
    notifyListeners();
  }
}
*/
