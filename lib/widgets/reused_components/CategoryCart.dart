import 'package:flutter/material.dart';

class CategoryCart extends StatelessWidget {
  final String imgName;
  final VoidCallback onPressed;

  const CategoryCart({Key? key, required this.imgName, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 3.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
          child: Image.asset(imgName),
        ),
      ),
    );
  }
}
