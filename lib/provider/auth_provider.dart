import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:travelapp/components/btmNavigator.dart';
import 'package:travelapp/components/messageHepler.dart';
import 'package:travelapp/router/router.dart';
import 'package:travelapp/service/auth_service.dart';

class UserProvider extends ChangeNotifier {
  final authService = AuthService();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool _loading = false;
  bool _success = false;
  bool get loading => _loading;
  bool get success => _success;

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
      // notifyListeners();
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
