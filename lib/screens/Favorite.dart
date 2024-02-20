import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/controllers/FavoriteController.dart';
import 'package:project_pas/controllers/cart_controller.dart';
import '../models/CartModel.dart';
import '../widgets/CardCart.dart';
import '../widgets/bottomNavbar.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key});

  final int currentIndex = 4;
  final FavoriteController favoriteController = Get.put(FavoriteController()); // Menggunakan Get.put untuk mendapatkan instance FavoriteController

  @override
  Widget build(BuildContext context) {
    print(favoriteController.cartItem.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Center(
        child: FutureBuilder<List<Cart>>(
          future: favoriteController.geFav(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Menampilkan loading indicator ketika masih loading data
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}'); // Menampilkan pesan error jika terjadi kesalahan
            } else if (snapshot.hasData) {
              List<Cart>? cartData = snapshot.data;
              if (cartData != null && cartData.isNotEmpty) {
                return ListView.builder(
                  itemCount: cartData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 25.0,left: 18.0,right: 18.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ListTile(
                            title: Text(cartData[index].title,style: TextStyle(fontSize: 10.0),),
                            // Menampilkan gambar dari Uint8List
                            leading: Image.memory(
                              cartData[index].image,
                              width: 50,
                              height: 50,
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.favorite,color: Colors.red,), // Icon yang digunakan (misalnya delete)
                              onPressed: () {
                                favoriteController.deleteFavorite(cartData[index].id);
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Text('No favorites found'); // Menampilkan pesan jika tidak ada data favorit yang ditemukan
              }
            } else {
              return Text('No data'); // Menampilkan pesan jika tidak ada data
            }
          },
        ),
      ),
    );
  }
}
