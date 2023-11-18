import 'package:flutter/material.dart';
import 'package:project_pas/Payment/Paymentscreen/Payment_Method.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Splash/Homescreen.dart';
import 'package:project_pas/Splash/SplashScreen.dart';
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
      home: Splash(),
    );
  }
}


