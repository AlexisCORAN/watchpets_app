/**
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watchpets/src/models/pets.dart';

class PetController with ChangeNotifier {
  Pet pet;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;}
  final List<Pet> = [];

  PetController() {
    this.fetchPetData();
  }

  Future fetchPetData() async {
    final userId = _firebaseAuth.currentUser.uid;
    final docs = await _firebaseFirestore.doc('pets/$userId').get();
  }
}

*/