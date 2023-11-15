import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ControllerAllListProduct.dart';

class ListviewAllProduct extends StatefulWidget {
  const ListviewAllProduct({super.key});

  @override
  State<ListviewAllProduct> createState() => _ListviewAllProductState();
}

class _ListviewAllProductState extends State<ListviewAllProduct> {
  final productController = Get.put(ControllerAllListProduct());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 10.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text('All Product')),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Obx(() => ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: productController.allProductResponseModelCtr.length,
                itemBuilder: (BuildContext ctx, int index) {
                  final product = productController.allProductResponseModelCtr[index];
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
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
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.network(
                                      product.image,
                                      width: 120,
                                      height: 90,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 50.0,
                                        left: 6.0,
                                        right: 6.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        product.title,
                                        style: TextStyle(fontSize: 9.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(bottom: 30.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "\$ ${product.price}",
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: MediaQuery.of(context).size.height * 0.042,
                                        width: MediaQuery.of(context).size.width * 0.4,
                                        child: ElevatedButton(
                                            onPressed: () {},
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
                      ),
                      SizedBox(
                        width: 25.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.4,
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
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.network(
                                      product.image,
                                      width: 120,
                                      height: 90,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 50.0,
                                        left: 6.0,
                                        right: 6.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        product.title,
                                        style: TextStyle(fontSize: 9.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(bottom: 30.0),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "\$ ${product.price}",
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: MediaQuery.of(context).size.height * 0.042,
                                        width: MediaQuery.of(context).size.width * 0.4,
                                        child: ElevatedButton(
                                            onPressed: () {},
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
                      ),
                    ],
                  );
                })),
          ),
        )
      ],
    );
  }
}
