import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/AllProductResponseModel.dart';

class ControllerDetailProduct extends GetxController {
  RxList<AllProductResponseModel> listmodelctr = <AllProductResponseModel>[].obs;
  List<AllProductResponseModel> ecommercelistmodel = [];

  Rx<AllProductResponseModel?> selectedProduct = Rx<AllProductResponseModel?>(null);
  PageController pageController = PageController();
  int currentPage = 0;

  void init() {
    pageController.addListener(() {
      currentPage = pageController.page?.round() ?? 0;
    });
  }

  @override
  void onInit() {
    super.onInit();
    print("DetailController initialized");
    init();


    var arguments = Get.arguments;

    if (arguments != null && arguments is int) {
      int productId = arguments;


      selectedProduct.value = fetchProductDetailsById(productId);
    } else {

      selectedProduct.value = null;
    }
  }


  AllProductResponseModel? fetchProductDetailsById(int productId) {
    return ecommercelistmodel.firstWhere(
          (product) => product.id == productId,
      orElse: () =>AllProductResponseModel(id: -1, title:'Product Not Found', price: 0.0,image: "",description: "Description Not Found") ,
    );
  }

  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}