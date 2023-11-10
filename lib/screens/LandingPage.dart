import 'package:flutter/material.dart';
import '../widgets/AppBar.dart';
import '../widgets/BackgroundAppBar.dart';
import '../widgets/CategoryProduct.dart';
import '../widgets/reused_components/CircelMenus.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});


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
              child: const Column(
                children: [
                  FillAppBar(),

                  CategoryProduct()
                ],
              ),
            )
          ],
        ),
    );
  }
}
