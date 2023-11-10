import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_pas/widgets/reused_components/AdvertisingCard.dart';

class AutoScrollListView extends StatefulWidget {
  @override
  _AutoScrollListViewState createState() => _AutoScrollListViewState();
}

class _AutoScrollListViewState extends State<AutoScrollListView> {
  final ScrollController _scrollController = ScrollController();
  int currentIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();


    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentIndex < 5 - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _scrollToPosition(currentIndex);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    timer.cancel();
    super.dispose();
  }

  void _scrollToPosition(int index) {
    _scrollController.animateTo(
      index * MediaQuery.of(context).size.width,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        children: [
          AdvertisingCard(
            imgName: 'assets_img/modell.png',
            text1: "Majority's best\nchoice",
            text2: 'Look free and attractive',),
          AdvertisingCard(
            imgName: 'assets_img/modell.png',
            text1: "Majority's best\nchoice",
            text2: 'Look free and attractive',),
          AdvertisingCard(
            imgName: 'assets_img/modell.png',
            text1: "Majority's best\nchoice",
            text2: 'Look free and attractive',),
          AdvertisingCard(
            imgName: 'assets_img/modell.png',
            text1: "Majority's best\nchoice",
            text2: 'Look free and attractive',),
        ],
      ),
    );
  }
}

