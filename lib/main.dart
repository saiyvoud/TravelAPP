import 'package:flutter/material.dart';
import 'package:travelapp/components/btmNavigator.dart';
import 'package:travelapp/view/auth/login.dart';
import 'package:travelapp/view/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BtmNavigator(),
    );
  }
}
