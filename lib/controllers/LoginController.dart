import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {
  late final SharedPreferences prefs;
  final TextEditingController emailTextEditingController =
  TextEditingController();
  final TextEditingController passwordTextEditingController =
  TextEditingController();
  RxBool isObsecure = true.obs;
  RxBool isObsecureFalse = false.obs;
  RxBool isLoading = false.obs;
  RxBool successfulLogin = true.obs;
  RxString message = "".obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    prefs = await SharedPreferences.getInstance();
  }

  login(String username, String password) async {
    isLoading.value = true;
    final response = await http.post(
      Uri.parse("https://mediadwi.com/api/latihan/login"),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: <String, String>{
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      bool status = jsonResponse['status'];
      String message = jsonResponse['message'];
      String? token = jsonResponse['token'];
      if(status){
        await prefs.setString("token", token!);
        await prefs.setString("username", username);
        this.message.value = message;
        successfulLogin.value = true;
        isLoading.value = false;
        print("INI UDAH MASUK KE LOGIN HEHEHE");
        Get.offNamed("/menu");
      } else {
        this.message.value = message;
        successfulLogin.value = false;
        isLoading.value = false;
        print("INI SALAH KAMU NI GIMANA");
      }
    } else {
      print("ERROR BANG");
      successfulLogin.value = false;
      print("status code : ${response.statusCode.toString()}");
    }
  }
}
