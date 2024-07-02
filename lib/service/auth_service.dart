import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<bool> register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
  }) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        await firestore.collection("user").doc(value.user!.uid).set({
          "userId": value.user!.uid,
          "firstname": firstname,
          "lastname": lastname,
          "email": email,
          "password": password
        }).then((result) {
          return true;
        }).catchError((onErr) {
          print(onErr);
          return false;
        });
      }).catchError((e) {
        print(e);
      });
      return false;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if(result.user!.uid.isNotEmpty){
          print(result.user!.uid);
          return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
