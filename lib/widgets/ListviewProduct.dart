// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:project_pas/widgets/reused_components/CartProduct.dart';
// import '../controllers/ControllerAllListProduct.dart';
// import '../screens/DetailProduct.dart';
//
// class ListviewProduct extends StatefulWidget {
//
//   const ListviewProduct({super.key});
//
//   @override
//   State<ListviewProduct> createState() => _ListviewProductState();
// }
//
// class _ListviewProductState extends State<ListviewProduct> {
//   final productController = Get.put(ControllerAllListProduct());
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 8.0,
//             mainAxisExtent: 8.0
//         ),
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: productController.allProductResponseModelCtr.length,
//         itemBuilder: (BuildContext ctx,int idx) {
//           final product = productController.allProductResponseModelCtr[idx];
//           return GestureDetector(
//               onTap: () {
//                 Get.to(() => DetailProduct(product: product));
//                 print(product.category);
//                 print('su');
//               },
//               child: CartProduct(imageUrl: product.image,title: product.title,price: product.price,));
//         }
//     );
//   }
// }
