import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:project_pas/Profile/Profilepage.dart';
import 'package:project_pas/screens/CartPage.dart';
import 'package:project_pas/screens/LandingPage.dart';
import '../Payment/Paymentscreen/Payment_Method.dart';
import '../controllers/bottom_navigation_controller.dart';

class BottomNavigation extends StatelessWidget {

  BottomNavigationController bottomNavigationController =
  Get.put(BottomNavigationController());
  BottomNavigation({super.key});
  final screens = [
    LandingPage(),
    CartPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(icon: Icons.home_filled, text: "home",),
                GButton(icon: Icons.shopping_cart, text: "cart"),
                GButton(icon: Icons.person_2, text: "profile")
              ],

              onTabChange: (value) {
                bottomNavigationController.changeIndex(value);
              },

            )
            ),
          ),
        ),
      );
  }
}
