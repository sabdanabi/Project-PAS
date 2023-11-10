import 'package:flutter/material.dart';

class CircelMenus extends StatelessWidget {

  final String text;
  final String imgName;

  CircelMenus({
    required this.text,
    required this.imgName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,top: 20.0,right: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.14,
                decoration: BoxDecoration(
                    color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(19.0)),
                  border: Border.all(color: Color(0xFFBAD7FE),width: 3)
                  ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17.0),
                child:  Image.asset(imgName,fit: BoxFit.cover,),
              ),
            )
          ),

          Text(text,style: TextStyle(fontSize: 8.0,color: Colors.black45),)
        ],
      ),
    );
  }
}
