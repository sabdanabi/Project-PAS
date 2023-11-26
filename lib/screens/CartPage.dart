import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/controllers/cart_controller.dart';
import '../widgets/CardCart.dart';
import '../widgets/bottomNavbar.dart';


class CartPage extends StatelessWidget {
  CartPage({super.key});
  final int currentIndex = 1;
  final CartController controller = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Cart',style:TextStyle(fontSize: 18,fontFamily: 'productsans_normal',fontWeight: FontWeight.bold),))
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height * 0.65,
          child: Obx(()=> controller.isRefresh == true ?
          ListView.builder(
            itemCount: controller.cartItem.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return CardCart(item: controller.cartItem.value[index]);
            },
          ) :
          ListView.builder(
            itemCount: controller.cartItem.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return CardCart(item: controller.cartItem.value[index]);
            },
          ),
          ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(onPressed: (){
                    Get.toNamed('/payment');
                  }, child: Text('Go to Checkout',style: TextStyle(color: Colors.white),),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8C58E4))
                      )
                  )),
            )
           ],
        ),
      ),
      bottomNavigationBar: bottomNavbar(context, currentIndex),
    );
  }
}
