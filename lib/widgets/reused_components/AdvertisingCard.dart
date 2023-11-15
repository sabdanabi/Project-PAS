import 'package:flutter/material.dart';

class AdvertisingCard extends StatelessWidget {
  final String imgName;
  final String text1;
  final String text2;

  AdvertisingCard(
      {required this.imgName, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.78,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF94D5FF), Color(0xFFD7D8FD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Image.asset(
                imgName,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 120.0, top: 20.0),
              child: Column(
                children: [
                  Text(text1),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      text2,
                      style: TextStyle(fontSize: 10.0, color: Colors.black45),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.042,
                        width: MediaQuery.of(context).size.width * 0.28,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'See more',
                              style: TextStyle(fontSize: 10.0),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11.0)),
                            ))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
