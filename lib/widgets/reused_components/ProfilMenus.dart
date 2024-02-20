import 'package:flutter/material.dart';


class ProfilMenus extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfilMenus({super.key,required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(icon),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(title,style: TextStyle(fontSize: 15,fontFamily: 'productsans_bold',),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.arrow_forward_ios_rounded),
            )
          ]
      ),
    );
  }
}

class ProfilMenus2 extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfilMenus2({super.key,required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(icon,color: Colors.red)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(title,style: TextStyle(fontSize: 15,color: Colors.red),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.arrow_forward_ios_rounded),
            )
          ]
      ),
    );
  }
}

