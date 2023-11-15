
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_pas/widgets/reused_components/AdvertisingCard.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AutoScrollCarousel extends StatefulWidget {
  @override
  _AutoScrollCarouselState createState() => _AutoScrollCarouselState();
}

class _AutoScrollCarouselState extends State<AutoScrollCarousel> {
  List<AdvertisingCard> advertisingCards = [
    AdvertisingCard(
      imgName: 'assets_img/modell.png',
      text1: "Majority's best\nchoice",
      text2: 'Look free and attractive',
    ),
    AdvertisingCard(
      imgName: 'assets_img/model3.png',
      text1: "Best Product",
      text2: 'Look free and attractive',
    ),
    AdvertisingCard(
      imgName: 'assets_img/model4.png',
      text1: "Quality Women's \nProducts",
      text2: 'Look free and attractive',
    ),
    AdvertisingCard(
      imgName: 'assets_img/model5.png',
      text1: "Quality Men's \nProducts",
      text2: 'Look free and attractive',
    ),
  ];

  int currentIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentIndex < advertisingCards.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: advertisingCards.length,
      options: CarouselOptions(
        enableInfiniteScroll: true,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayInterval: const Duration(seconds: 3),
        aspectRatio: 25 / 10,
        onPageChanged: (index, reason) {
          currentIndex = index;
        },
      ),
      itemBuilder: (context, index, realIndex) {
        return advertisingCards[index];
      },
    );
  }}