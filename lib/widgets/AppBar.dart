import 'package:flutter/material.dart';
import 'package:project_pas/widgets/reused_components/AdvertisingCard.dart';

import 'AutoScrollListView.dart';


class FillAppBar extends StatelessWidget {
  const FillAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 30.0),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: Row(
                  children: [
                    Image.asset(
                      height: MediaQuery.of(context).size.height * 0.06,
                      'assets_img/logo.png',
                    ),
                    // Jarak antara gambar dan teks
                    const Text(
                      'Shopper',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ],
          ),
        ),

        AutoScrollListView()

      ],
    );
  }
}
