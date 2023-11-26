import 'package:flutter/material.dart';

class BackgroundAppBar extends StatelessWidget {
  const BackgroundAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Positioned.fill(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF4D63F5), Color(0xFF7B46B6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
            )
        ),
      ),
    );
  }
}
