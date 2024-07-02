import 'package:flutter/material.dart';
import 'package:travelapp/components/btmNavigator.dart';
import 'package:travelapp/view/auth/login.dart';
import 'package:travelapp/view/auth/register.dart';
import 'package:travelapp/view/home/home.dart';


class RouteAPI {
  static const login = "/login";
  static const register = "/register";
  static const bottom = "/bottom";
  static const home = "/home";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case register:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );
      case bottom:
        return MaterialPageRoute(
          builder: (context) => const BtmNavigator(),
        );
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        ); 
      default:
        throw const FormatException("Route not found!");
    }
  }
}
   