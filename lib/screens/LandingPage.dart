import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/screens/DetailProduct.dart';
import 'package:project_pas/widgets/ListviewMenusCategories.dart';
import 'package:project_pas/widgets/reused_components/CartProduct.dart';
import '../controllers/ControllerAllListProduct.dart';
import '../widgets/AppBar.dart';
import '../widgets/BackgroundAppBar.dart';
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
        body: Obx(() =>
            ListView(
              children: [
                Stack(
                  children: [
                    BackgroundAppBar(),
                    Container(
                      child: Column(
                        children: [
                          FillAppBar(),
                          ListviewMenusCategories(),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: productController
                                    .allProductResponseModelCtr.length,
                                itemBuilder: (BuildContext ctx, int idx) {
                                  final product = productController
                                      .allProductResponseModelCtr[idx];
                                  return GestureDetector(
                                      onTap: () {
                                        Get.to(() =>
                                            DetailProduct(product: product));
                                        print(product.category);
                                        print('su');
                                      },
                                      child: CartProduct(
                                        imageUrl: product.image,
                                        title: product.title,
                                        price: product.price,
                                        produk: product,));
                                }
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}
