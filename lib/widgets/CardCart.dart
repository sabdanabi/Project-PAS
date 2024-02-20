import 'package:flutter/material.dart';
import 'package:project_pas/models/AllProductResponseModel.dart';


class CardCart extends StatelessWidget {
  final AllProductResponseModel item;
  const CardCart({super.key,required this.item });



  @override
  Widget build(BuildContext context) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Image.network(item.image,
                width: 60.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(item.title,
                      style: TextStyle(fontSize: 11.0),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rate:",style: TextStyle(color: Colors.black54,fontSize: 12.0,fontFamily: 'productsans_bold',
                      )),
                      for (int i = 0; i < (item.rating?.rate.toInt() ?? 0); i++)
                        Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15.0
                        ),
                      SizedBox(width: 5),
                      Text(item.rating?.rate.toString() ?? "N/A",style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'productsans_bold',
                      ),)
                    ],
                  ),
                  Text('\$ ${item.price.toString()}')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
