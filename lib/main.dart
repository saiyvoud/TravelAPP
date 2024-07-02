import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/components/messageHepler.dart';

import 'package:travelapp/provider/auth_provider.dart';
import 'package:travelapp/router/router.dart';
import 'package:travelapp/view/auth/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyCaU14p7xk6w1cYBx5EOnVlhkHe3lvR7lw',
    appId: '1:840717707319:android:f22dbc5a7083d2eb8177b2',
    messagingSenderId: '840717707319',
    projectId: 'travel-69450',
    storageBucket: 'myapp-b9yt18.appspot.com',
  ));

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: RouteAPI.generateRoutes,
      scaffoldMessengerKey: MessageHepler.key,
      home: LoginView(),
    );
  }
}
