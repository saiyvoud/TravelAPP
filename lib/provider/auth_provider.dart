import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:travelapp/components/messageHepler.dart';
import 'package:travelapp/router/router.dart';
import 'package:travelapp/service/auth_service.dart';
import 'package:travelapp/view/auth/forget.dart';

class UserProvider extends ChangeNotifier {
  final authService = AuthService();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool _loading = false;
  bool _success = false;
  bool get loading => _loading;
  bool get success => _success;

  Future<void> updateProfile({required String profile}) async {
    try {
      final result = await authService.updateProfile(profile: profile);
      navService.goBack();
      if (result == 1) {
        MessageHepler.showSnackBarMessage(isSuccess: true, message: "ສຳເລັດ");
      }
    } catch (e) {
      navService.goBack();
      MessageHepler.showSnackBarMessage(
          isSuccess: false, message: "ອັດເດດໂປຣໄຟຜິດພາດ");
    }
  }

  Future<void> editUser({
    required String firstname,
    required String lastname,
  }) async {
    try {
      final result = await authService.editUser(
        firstname: firstname,
        lastname: lastname,
      );
      navService.goBack();
      if (result == 1) {
        MessageHepler.showSnackBarMessage(isSuccess: true, message: "ສຳເລັດ");
      }
    } catch (e) {
      navService.goBack();
      MessageHepler.showSnackBarMessage(
          isSuccess: false, message: "ອັບເດດຂໍ້ມູນຜິດພາດ");
    }
  }

  Future<void> chanagePassword({
    required String password,
    required String email,
    required String newpassword,
  }) async {
    try {
      final result = await authService.chanagePassword(
        password: password,
        email: email,
        newpassword: newpassword,
      );
      navService.goBack();
      if (result == 1) {
        MessageHepler.showSnackBarMessage(isSuccess: true, message: "ສຳເລັດ");
      }
    } catch (e) {
      navService.goBack();
      MessageHepler.showSnackBarMessage(
          isSuccess: false, message: "ການປ່ຽນແປງລະຫັດຜ່ານຜິດພາດ");
    }
  }

  Future<void> logout() async {
    try {
      final result = await authService.logout();
      if (result == 1) {
        navService.pushNamedAndRemoveUntil(RouteAPI.login);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> forgetPassword({
    required String email,
    required String password,
  }) async {
    try {
      final result =
          await authService.forgotPassword(email: email, password: password);
      navService.goBack();
      if (result == true) {
        MessageHepler.showSnackBarMessage(isSuccess: true, message: "ສຳເລັດ");

        navService.pushNamedAndRemoveUntil(RouteAPI.login);
      }
    } catch (e) {
      navService.goBack();
      MessageHepler.showSnackBarMessage(
          isSuccess: false, message: "ອີເມວບໍ່ມີໃນລະບົບ");
    }
  }

  Future<void> register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
  }) async {
    try {
      final result = await authService.register(
        firstname: firstname,
        lastname: lastname,
        email: email,
        password: password,
      );
      print("=====>$result");
      navService.goBack();

      if (result == 1) {
        MessageHepler.showSnackBarMessage(
            isSuccess: true, message: "Register Success");

        navService.pushNamedAndRemoveUntil(RouteAPI.login);
        notifyListeners();
      } else {
        MessageHepler.showSnackBarMessage(
            isSuccess: false, message: "Email Already!");
      }
    } catch (e) {
      MessageHepler.showSnackBarMessage(
          isSuccess: false, message: "Email Already!");
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await authService.login(email: email, password: password);
      navService.goBack();
      if (result == true) {
        navService.pushNamedAndRemoveUntil(RouteAPI.bottom);
      }
    } catch (e) {
      navService.goBack();
      MessageHepler.showSnackBarMessage(
          isSuccess: false, message: "ອີເມວ ແລະ ລະຫັດຜ່ານບໍ່ຖືກຕ້ອງ");
    }
  }
}
