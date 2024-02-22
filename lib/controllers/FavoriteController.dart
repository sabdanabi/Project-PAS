import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import '../db/db_helper.dart';
import '../models/CartModel.dart';


class FavoriteController extends GetxController{
  Database? db = DatabaseHelper.getDb();
  RxBool isLoading = false.obs;
  RxList<Cart> favorite = <Cart>[].obs;

  @override
  void onInit() {
    super.onInit();
    getLike();
  }


  void getLike() async {
    isLoading.value = true;
    List<Map<String, dynamic>> mapNotes = await db!.query("Like");
    favorite.assignAll(mapNotes.map((e) => Cart.fromMap(map: e)).toList());
    isLoading.value = false;
  }

  void createLike({
    required String title,
    required Uint8List image,
  }) async {
    try {
      isLoading.value = true;
      await db!.insert(
        'Like',
        {
          'title': title,
          'image': image,
        },
      );
      getLike();
    } catch (e) {
      print('Error inserting note: $e');
    }
  }

  void deleteLike(String name) async {
    await db!.delete("Like", where: "title = ?", whereArgs: [name]);
    getLike();
  }

  RxBool isLiked(String name) {
    return favorite.any((note) => note.title == name).obs;
    }

}
