import 'package:flutter/material.dart';
import 'package:project_pas/Login&RegisterUI/Login/ReusedLogin/MyLable.dart';


class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)
              ),
              color: Colors.blue,
              gradient: LinearGradient(
                  colors: [
                    Colors.blueAccent,
                    Colors.blueAccent
                  ],
                  begin: FractionalOffset(0.0,0.0),
                  end: FractionalOffset(0.0,0.0),
                  stops: [0.0,1.0],
                  tileMode: TileMode.clamp
              )
          ),
        ),
        Positioned(
            bottom: -50.0,
            child: InkWell(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.grey[150],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0), // Sesuaikan dengan sudut yang diinginkan
                    child: Image.asset(
                      'assets_img/pp.jpg',
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  )
                ),
              ),
            ),
        ),
      ],
    );

  }
}
