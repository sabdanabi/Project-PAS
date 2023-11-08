import 'package:flutter/material.dart';

// class InfoCard extends StatelessWidget {
//   // the values we need
//   final String text;
//
//
//   InfoCard(
//       {required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//  /*     onTap: onPressed(),*/
//       child: Card(
//         color: Colors.grey[200],
//         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//         child: ListTile(
//           title: Text(
//             text,
//             style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400,
//                 fontSize: 20,
//                 fontFamily: "Source Sans Pro"),
//           ),
//         ),
//       ),
//
//     );
//   }
// }

class Card2 extends StatelessWidget{
  final String text;
  final IconData icon;

  Card2(
  {required this.text,required this.icon}
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(icon,),
              title: Text(text),
            ),
          )
        ],
      ),
    );
  }
}