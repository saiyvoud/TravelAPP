import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<int> register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
  }) async {
    try {
      final result = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (result.user!.uid.isEmpty) {
        return 0;
      }
      await firestore.collection("user").doc(result.user!.uid).set({
        "userId": result.user!.uid,
        "firstname": firstname,
        "lastname": lastname,
        "email": email,
        "password": password
      });
      return 1;
    } catch (e) {
      return 0;
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
      if (result.user!.uid.isNotEmpty) {
        print(result.user!.uid);
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
