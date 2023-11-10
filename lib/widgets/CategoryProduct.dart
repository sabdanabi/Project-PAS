import 'package:flutter/material.dart';


class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Categories',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54 ),),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 3.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset("assets_img/cardCP1.png"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 3.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset("assets_img/cardCP2.png"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 3.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset("assets_img/cardCP3.png"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 3.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset("assets_img/cardCP4.png"),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset("assets_img/cardCP5.png"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
