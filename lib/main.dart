import 'package:flutter/material.dart';
import 'package:full_flutter_beginner/pages/first_page.dart';
import 'package:full_flutter_beginner/pages/home_page.dart';
import 'package:full_flutter_beginner/pages/profile_page.dart';
import 'package:full_flutter_beginner/pages/settings_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
      }


    );
  }
}