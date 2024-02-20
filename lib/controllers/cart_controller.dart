import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/models/AllProductResponseModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import '../models/CartModel.dart';

class CartController extends GetxController{
  RxList<AllProductResponseModel> cartItem = <AllProductResponseModel>[].obs;
  late List<Cart>cart;
  List<Cart> cartData = <Cart>[];
  RxBool isRefresh = false.obs;
  final String _databaseName = 'cart_database.db';
  final int _databaseVersion = 1;
  Database? _database;


  loadData() async {
    try {
      final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

      if (response.statusCode == 200) {
        //OK
        // Mengisi data productResponseModelCtr dengan hasil json dari model
        cartItem.assignAll(allProductResponseModelFromJson(response.body)); // Menggunakan assignAll untuk mengisi daftar
      } else {
        print("status code : ${response.statusCode}");
      }
    } catch (e) {
      print("error : $e");
    }
  }


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