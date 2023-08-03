import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './views/screens/main_screen.dart';
import './utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: kDarkTheme,
      theme: kLightTheme,
      home: MainScreen(),
    );
  }
}
