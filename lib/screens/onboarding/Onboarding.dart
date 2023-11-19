import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    const decoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 19),
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shapper",
          body: "Welcome to our online store! Discover a great shopping experience.",
          image: Image.network("https://img.freepik.com/free-vector/ecommerce-campaign-concept-illustration_114360-8432.jpg",
          width: 350,),
          decoration: decoration
        ),
        PageViewModel(
            title: "Discover Our Featured Products",
            body: "Browse our collection of the best products and find what you want most.",
            image: Image.network("https://img.freepik.com/free-vector/ecommerce-campaign-concept-illustration_114360-8432.jpg",
              width: 350,),
            decoration: decoration
        ),
        PageViewModel(
            title: "Your First Discount",
            body: "Enjoy exclusive discounts for new customers. Browse and save!",
            image: Image.network("https://img.freepik.com/free-vector/ecommerce-campaign-concept-illustration_114360-8432.jpg",
              width: 350,),
            decoration: decoration,
        )
      ],
      onDone: (){
        Get.offNamed('/register');
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,

      back: Icon(Icons.arrow_back_ios_new),
      skip: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),),
      next: Icon(Icons.arrow_forward),
      done: Text('Done',style: TextStyle(fontWeight: FontWeight.bold),),
      dotsDecorator: DotsDecorator(
        size: Size(10,10),
        color: Colors.grey,
          activeSize: Size(22,10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))
        )
      ),
    );
  }
}
