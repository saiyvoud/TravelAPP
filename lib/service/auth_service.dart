import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<int> logout() async {
    try {
      await auth.signOut();
      return 1;
    } catch (e) {
      return 0;
    }
  }

  Future<int> chanagePassword({
    required String password,
    required String email,
    required String newpassword,
  }) async {
    try {
      final cred =
          EmailAuthProvider.credential(email: email, password: password);
      auth.currentUser!.reauthenticateWithCredential(cred).then((value) {
        auth.currentUser!.updatePassword(newpassword).then((_) async {
          //Success, do something
          await firestore.collection("user").doc(auth.currentUser!.uid).update({
            "password": newpassword,
          });
          return 1;
        }).catchError((error) {
          //Error, show something
          return 0;
        });
      });

      return 1;
    } catch (e) {
      print(e);
      return 0;
    }
  }

  Future<int> updateProfile({
    required String profile,
  }) async {
    try {
      await firestore.collection('user').doc(auth.currentUser!.uid).update({
        "profile": profile,
      }).then((value) {
        return 1;
      }).catchError((err) {
        return 0;
      });
      return 1;
    } catch (e) {
      return 0;
    }
  }

  Future<int> editUser({
    required String firstname,
    required String lastname,
  }) async {
    try {
      await firestore.collection("user").doc(auth.currentUser!.uid).update({
        "firstname": firstname,
        "lastname": lastname,
      }).then((e) {
        return 1;
      }).catchError((err) {
        print(err);
        return 0;
      });
      return 1;
    } catch (e) {
      print(e);
      return 0;
    }
  }

  Future<bool> forgotPassword(
      {required String email, required String password}) async {
    try {
      final result = await firestore
          .collection("user")
          .where("email", isEqualTo: email)
          .get();

      result.docs.forEach((value) async {
        await auth.sendPasswordResetEmail(email: email);
        print(value.id);
        firestore
            .collection("user")
            .doc(value.id)
            .update({"password": password}).then((value) {
          return true;
        });
      });

      return true;
    } on FirebaseAuthException catch (err) {
      print(err.message.toString());
      return false;
    } catch (err) {
      print(err.toString());
      return false;
    }
  }

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
        "role": "user",
        "password": password,
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
