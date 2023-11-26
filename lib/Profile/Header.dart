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
        ),
        Positioned(
            bottom: -50.0,
            child: InkWell(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
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
