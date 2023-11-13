import 'package:flutter/material.dart';
import 'package:project_pas/Login&RegisterUI/Login/LoginPage/Login.dart';
import 'package:project_pas/Login&RegisterUI/Register/RgisterPage/RegisterPage.dart';
import 'package:project_pas/Profile/Profilepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

