import 'package:flutter/material.dart';

class MyLabel extends StatelessWidget {
  final String text;

  MyLabel({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class MyLabel1 extends StatelessWidget {
  final String text;

  MyLabel1({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class MyLabel2 extends StatelessWidget {
  final String text;

  MyLabel2({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style:
          TextStyle(
            color: Colors.grey[500],
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
