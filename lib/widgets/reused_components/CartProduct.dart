import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/controllers/FavoriteController.dart';
import 'package:project_pas/controllers/cart_controller.dart';
import '../../models/AllProductResponseModel.dart';


class CartProduct extends StatelessWidget {

  final String imageUrl;
  final String? title;
  final double? price;
  final AllProductResponseModel produk;
  AllProductResponseModel? product;

  CartProduct({required this.imageUrl,required this.title,required this.price,required this.produk});
  final CartController controller = Get.put(CartController());
  final FavoriteController controllerfav = Get.put(FavoriteController());



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Warna shadow
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Atur sudut lengkung kartu jika diinginkan
                ),
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 110.0),
                      // Tombol favorit
                      child: IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () async {
                            Uint8List? imageBytes = await controllerfav.loadImage(imageUrl);
                            if (imageBytes != null) {
                              controllerfav.addToFavorites(title ?? "", imageBytes);
                            } else {
                              print("Failed to load image");
                            }
                          },
                        ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0,top: 10.0),
                      child: Image.network(
                        imageUrl,
                        width: 60.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 40.0,
                          left: 6.0,
                          right: 6.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          textAlign: TextAlign.center,
                          title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10.0,fontFamily: 'productsans_bold',),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 30.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "\$ ${price!}",
                          style: TextStyle(fontSize: 9.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.042,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                              onPressed: () {
                                controller.addCard(context, produk);
                              },
                              child:
                              Icon(
                                Icons.shopping_cart,
                                size: 15, // ukuran ikon
                                color: Colors.white,),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8C58E4))
                              ))),
                    )
                  ],
                )),
          ),
    );
  }
}
