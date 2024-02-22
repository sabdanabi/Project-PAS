import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/controllers/FavoriteController.dart';
import '../models/AllProductResponseModel.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key});


  final FavoriteController favoriteController = Get.put(FavoriteController()); // Menggunakan Get.put untuk mendapatkan instance FavoriteController
  RxList<AllProductResponseModel> allProductResponseModelCtr = <AllProductResponseModel>[].obs;
  @override
  Widget build(BuildContext context) {
    print(favoriteController.favorite.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body:  Obx(() => favoriteController.isLoading.value
    ?Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator())
          :  Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: favoriteController.favorite.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
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
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.memory(favoriteController.favorite[index].image!,width: 50,height: 50,),
                          Text(favoriteController.favorite[index].title,textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0),),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {
                          favoriteController.deleteLike(favoriteController.favorite[index].title!);
                        },
                        icon: Icon(Icons.favorite,color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      )
    );
  }
}
