import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ControllerAllListProduct.dart';
import '../widgets/AppBar.dart';
import '../widgets/BackgroundAppBar.dart';
import '../widgets/CategoryProduct.dart';
import 'ListviewAllProduct.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundAppBar(),
          Container(
            child: Column(
              children: [
                FillAppBar(),
                CategoryProduct(),
                ListviewAllProduct()
              ],
            ),
          )
        ],
      ),
    );
  }
}
