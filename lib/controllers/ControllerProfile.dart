import 'dart:io';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePageController extends GetxController {
  Rx<File> image = File('').obs;
  late final SharedPreferences prefs;
  RxString username = "".obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    prefs = await SharedPreferences.getInstance();
    username.value = prefs.getString("username") ?? "No Username";
  }


}