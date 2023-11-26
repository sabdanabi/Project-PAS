import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ControllerAllListProduct.dart';
import '../controllers/ControllerDetailProduct.dart';
import '../controllers/cart_controller.dart';
import '../models/AllProductResponseModel.dart';



class DetailProduct extends StatelessWidget {

  DetailProduct({Key? key,required this.product, this.category}):super(key:key);
  final ControllerDetailProduct controller = Get.put(ControllerDetailProduct());
  AllProductResponseModel product;
  final ecommercecontroller = Get.put(ControllerAllListProduct());
  final CartController controler = Get.put(CartController());
  final Category? category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23,top: 30.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 110.0),
                  child: Text("Product"),
                ),
                Icon(Icons.shopping_cart_outlined)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.network(product.image),
                ),
               ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    ),
                ),
              ),

              Container(
                width: 65.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xFFBAFC5D),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                    child: Text("\$${product.price.toString()}",style: TextStyle(fontWeight: FontWeight.w500),)),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0,top: 5.0),
                child: Text("Rate:",style: TextStyle(color: Colors.black54,)),
              ),
              for (int i = 0; i < (product.rating?.rate.toInt() ?? 0); i++)
                Icon(
                  Icons.star,
                  color: Colors.amber,
                    size: 20.0
                ),
              SizedBox(width: 5),
              Text(product.rating?.rate.toString() ?? "N/A",style: TextStyle(fontWeight: FontWeight.w500),)
            ],
          ),
          Padding(
             padding: const EdgeInsets.only(left: 25.0,top: 5.0),
             child: Align(
               alignment: Alignment.centerLeft ,
                 child: Text("Description:",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54),)),
           ),
          Padding(
             padding: const EdgeInsets.only(left: 28.0,top: 5.0),
             child: Text(product.description,
               style: TextStyle(fontSize: 13.0,color: Colors.black45),
               maxLines: 3,
               overflow: TextOverflow.ellipsis,
             ),
           ),
          Padding(
             padding: const EdgeInsets.only(top: 15.0),
             child: Container(
                 height: MediaQuery.of(context).size.height * 0.06,
                 width: MediaQuery.of(context).size.width * 0.85,
                 child: ElevatedButton(
                     onPressed: () {
                       controler.addCard(context, product);
                     }, child: Text("Add to cart",style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xFF6F4EC7),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(11.0)),
                 ))),
           )
        ],
      ),
    );
  }
}
