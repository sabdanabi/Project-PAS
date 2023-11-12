import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ControllerAllListProduct.dart';
import '../widgets/AppBar.dart';
import '../widgets/BackgroundAppBar.dart';
import '../widgets/CategoryProduct.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final productController = Get.put(ControllerAllListProduct());
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

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Obx(() => ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:
                      productController.allProductResponseModelCtr.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        final product = productController.allProductResponseModelCtr[index];
                        return Container(
                          margin: EdgeInsets.all(10.0),
                          child: Card(
                              child: Image.network(product.image)
                          ),
                        );
                      })),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
