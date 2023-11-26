import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/screens/DetailProduct.dart';
import 'package:project_pas/widgets/ListviewMenusCategories.dart';
import 'package:project_pas/widgets/reused_components/CartProduct.dart';
import '../Profile/Profilepage.dart';
import '../controllers/ControllerAllListProduct.dart';
import '../widgets/AppBar.dart';
import '../widgets/BackgroundAppBar.dart';
import '../widgets/bottomNavbar.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final productController = Get.put(ControllerAllListProduct());
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => productController.isLoading.value
      ?Align(
        alignment: Alignment.center,
          child: CircularProgressIndicator())
      : ListView(
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
                        itemCount: productController.allProductResponseModelCtr.length,
                        itemBuilder: (BuildContext ctx, int idx) {
                          final product = productController.allProductResponseModelCtr[idx];
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => DetailProduct(product: product));
                              print(product.category);
                              print('su');
                            },
                            child: CartProduct(
                              imageUrl: product.image,
                              title: product.title,
                              price: product.price,
                              produk: product,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )
      ),
      bottomNavigationBar: bottomNavbar(context, currentIndex),
    );
  }

}
