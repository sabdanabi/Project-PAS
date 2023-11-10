import 'package:flutter/material.dart';
import 'package:project_pas/widgets/reused_components/CircelMenus.dart';


class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0,bottom: 110.0,left: 11.0,right: 10.0),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.14,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(Radius.circular(19.0)),
                    border: Border.all(color: Color(0xFFBAD7FE),width: 3)
                ),
                child: Center(child: Text('ALL',style: TextStyle(color: Color(0xFFBAD7FE)),textAlign: TextAlign.center))
            ),
          ),
          CircelMenus(imgName: 'assets_img/clmodelman.jpg',text: "Man's Fashion"),
          CircelMenus(imgName: 'assets_img/clmodel.jpg',text: "Woman's Fashion"),
          CircelMenus(imgName: 'assets_img/clmodel2.jpeg',text: "Jewelery"),
          CircelMenus(imgName: 'assets_img/clmodel3.jpg',text: "Electronic"),
        ],
      ),
    );
  }
}
