import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});
  //collection reference
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection("users");

  //update user data
  Future updateUserData(String email, String password, String firstName,
      String lastName, String phoneNumber, String address) async {
    return await usersCollection.doc(uid).set({
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'address': address,
    });
  }
}
