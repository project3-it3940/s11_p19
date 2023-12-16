import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_app/user.model.dart';

class FirebaseService {
  static DatabaseReference databaseReference =
      FirebaseDatabase.instance.ref("/users");

  void addUser(UserModel user) {
    databaseReference.child("/${user.id}").set(user.toJson());
  }


}
