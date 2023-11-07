import 'package:flutter/material.dart';


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
          Container(
            child: AppBar(
              flexibleSpace: Positioned.fill(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green], // Warna gradien
                        begin: Alignment.topLeft, // Posisi awal gradien
                        end: Alignment.bottomRight,
                      ),
                    ),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
