import 'package:flutter/material.dart';
import 'package:user_interfaces/screens/home.dart';
import 'package:user_interfaces/screens/login.dart';
import 'package:user_interfaces/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),

      routes: {
        // '/': (ctx) => LandingPage(),
        HomePage.routeName: (ctx) =>
        const HomePage(),
        SplashPage.routeName: (ctx) =>
        const SplashPage(),
        LoginPage.routeName: (ctx) =>
        LoginPage(),
      },
    );
  }
}

