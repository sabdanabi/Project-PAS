import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50)
                )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.cyan
              ),
              child: Container(
                height: 440,
                decoration: BoxDecoration(
                  color:Colors.white  ,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50)
                  )
                ),
              ),
            )
          ],
        )
      ],
    );
    Stack(
      children: [],
    );
  }
}
