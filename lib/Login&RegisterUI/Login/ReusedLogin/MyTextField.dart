import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final double height;
  final double width;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.height = 50.0,
    this.width = 400.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: height,
        width: width,
        child: TextField(
          controller: controller,
          obscureText: obscureText, // Sesuaikan dengan nilai obscureText yang diberikan
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextFieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final double height;
  final double width;

  MyTextFieldPassword({
    Key? key,
    required this.controller,
    required this.hintText,
    this.height = 50.0,
    this.width = 400.0,
  }) : super(key: key);

  @override
  _MyTextFieldPasswordState createState() => _MyTextFieldPasswordState();
}

class _MyTextFieldPasswordState extends State<MyTextFieldPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: widget.height,
        width: widget.width,
        child: TextField(
          controller: widget.controller,
          obscureText: _obscureText, // Gunakan _obscureText untuk mengatur visibilitas teks
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
