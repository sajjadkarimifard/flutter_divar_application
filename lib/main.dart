// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_divar_application/constant/color.dart';
import 'package:flutter_divar_application/ui/screens/category_screen.dart';
import 'package:flutter_divar_application/ui/screens/home_screen.dart';
import 'package:flutter_divar_application/ui/screens/profile_screen.dart';
import 'package:flutter_divar_application/ui/screens/set_location_screen.dart';
import 'ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
