import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/models/AllProductResponseModel.dart';

class CartController extends GetxController{
  RxList<AllProductResponseModel> cartItem = <AllProductResponseModel>[].obs;
  RxBool isRefresh = false.obs;

  addCard(BuildContext context,AllProductResponseModel newItem){
    bool check = false;
    for(var item in cartItem){
      if(item.id == newItem.id){
        check = true;
        break;
      }

    }
    if(!check){
      cartItem.value.add(newItem);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Item added to cart.'),
            duration: Duration(seconds: 2),
          ),
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Item sudah di cart.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}