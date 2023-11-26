import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/controllers/ControllerAllListProduct.dart';
import 'package:project_pas/models/AllProductResponseModel.dart';
import 'package:project_pas/widgets/reused_components/CategoryCart.dart';

class ListviewMenusCategories extends StatelessWidget {
  ListviewMenusCategories({super.key});

  final productController = Get.put(ControllerAllListProduct());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCart(
                    onPressed: () {
                      productController.allProductResponseModelCtr.length;
                      print("Filtered Product count: ${productController.allProductResponseModelCtr}");
                    },
                    imgName: "assets_img/cardCP1.png"),

                CategoryCart(
                    onPressed: () {
                      productController.filterProductsByCategory(Category.MEN_S_CLOTHING);
                      print("Filtered Product count: ${productController.allProductResponseModelCtr.length}");
                    },
                    imgName: "assets_img/cardCP2.png"),

                CategoryCart(
                    onPressed: () {
                      productController.filterProductsByCategory(Category.WOMEN_S_CLOTHING);
                      print("Filtered Product count: ${productController.allProductResponseModelCtr.length}");
                    },
                    imgName: "assets_img/cardCP3.png"),

                CategoryCart(
                    onPressed: () {
                      productController.filterProductsByCategory(Category.JEWELERY);
                      print("Filtered Product count: ${productController.allProductResponseModelCtr.length}");
                    },
                    imgName: "assets_img/cardCP4.png"),

                CategoryCart(
                    onPressed: () {
                      productController.filterProductsByCategory(Category.ELECTRONICS);
                      print("Filtered Product count: ${productController.allProductResponseModelCtr.length}");
                    },
                    imgName: "assets_img/cardCP5.png"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
