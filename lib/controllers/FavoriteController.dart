import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import '../models/AllProductResponseModel.dart';
import '../models/CartModel.dart';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class FavoriteController {
  late List<Cart> cart;
  List<Cart> cartData = <Cart>[];
  RxBool isRefresh = false.obs;
  final String _databaseName = 'cart_database.db';
  final int _databaseVersion = 1;
  Database? _database;
  RxList<AllProductResponseModel> cartItem = <AllProductResponseModel>[].obs;

  FavoriteController() {
    _initDatabase(); // Panggil _initDatabase() saat kelas dibuat
    loadData();
  }

  Future<void> _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);
    _database = await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Favourite (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        title TEXT, 
        image BLOB
      )
    ''');
  }

  Future<List<Cart>> geFav() async {
    final data = await _database!.query("Favourite");
    return data.map((e) => Cart.fromJson(e)).toList();
  }

  Future<void> insert(Map<String, dynamic> row) async {
    if (_database != null) {
      await _database!.insert("Favourite", row);
      await refreshFavorites();
    } else {
      print("Error: Database is null");
    }
  }

  Future<void> deleteFavorite(int? id) async {
    if (id != null) {
      // Logika untuk menghapus item favorit dengan ID yang ditentukan
      // Contoh:
      await _database?.delete("Favourite", where: "id = ?", whereArgs: [id]);
      // Segarkan UI atau lakukan tugas lain yang diperlukan
    } else {
      print("Error: ID kosong");
    }
  }
  
  Future<void> refreshFavorites() async {
    cartData = await geFav();
    isRefresh.toggle();
  }

  Future<void> addToFavorites(String? title, Uint8List? image) async {
    if (title != null && image != null) {
      print('Title: $title');
      print('Image length: ${image.length}');
      Map<String, dynamic> row = {
        'title': title,
        'image': image,
      };
      await insert(row);
    } else {
      print('Title or image is null');
    }
  }

  Future<Uint8List?> loadImage(String imageUrl) async {
    try {
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        return response.bodyBytes;
      } else {
        print("Failed to load image: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error loading image: $e");
      return null;
    }
  }

  loadData() async {
    try {
      final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
      if (response.statusCode == 200) {
        cartItem.assignAll(allProductResponseModelFromJson(response.body));
      } else {
        print("status code : ${response.statusCode}");
      }
    } catch (e) {
      print("error : $e");
    }
  }
}
