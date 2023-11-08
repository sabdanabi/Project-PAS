import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start    ,
          children: [
            SizedBox(height: 50,),
            Text('Get Everything \n'
                'at your \n'
                'Doorstep \n',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.grey[800],
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width*0.4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('Images/Lingkaran.png',
                //   width: MediaQuery.of(context).size.width*0.8,
                //   height: MediaQuery.of(context).size.height*0.4,
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
