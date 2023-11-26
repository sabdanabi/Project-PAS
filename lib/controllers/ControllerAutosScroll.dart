// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'dart:async';
//
// class ControllerAutoScroll extends GetxController{
//   int currentIndex = 0;
//   late Timer timer;
//
//   @override
//   void initState() {
//     super.initState();
//
//     timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       if (currentIndex < advertisingCards.length - 1) {
//         currentIndex++;
//       } else {
//         currentIndex = 0;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }
// }