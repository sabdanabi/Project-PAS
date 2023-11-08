import 'package:flutter/material.dart';
import 'package:project_pas/Profile/Header.dart';
import 'InfoCard.dart';

// our data
const url = "meshivanshsingh.me";
const email = "me.shivansh007@gmail.com";
const phone = "90441539202"; // not real number :)
const location = "Lucknow, India";

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pandu Sabda Nabi',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                )
              ],
            ),
            SizedBox(height: 20),
            Card2(text: '(+62 82340760761)', icon: (Icons.phone),
            ),
            Card2(text: 'Rafihaiqal@gmail.com', icon: (Icons.email)
            ),
            Card2(text: 'rafi19', icon: (Icons.facebook_sharp),
            ),
            Card2(text: 'rafihaiqal90', icon: (Icons.telegram),
            ),
          ],
        ),
      ),
    );
  }
}
