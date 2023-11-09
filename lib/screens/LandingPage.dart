import 'package:flutter/material.dart';

import '../widgets/reused_components/circelMenus.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});


  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              child: AppBar(
                flexibleSpace: Positioned.fill(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF4D63F5), Color(0xFF7B46B6)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                      ),
                    )
                ),
              ),
            ),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 30.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 75.0),
                          child: Row(
                            children: [
                              Image.asset(
                                height: MediaQuery.of(context).size.height * 0.06,
                                'assets_img/logo.png',
                              ),
                              // Jarak antara gambar dan teks
                              const Text(
                                'Shopper',
                                style: TextStyle(fontSize: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const   BoxDecoration(
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
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Image.asset(
                            'assets_img/modell.png',
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                        ),

                       Padding(
                          padding: EdgeInsets.only(left: 120.0,top: 20.0),
                          child: Column(
                            children: [
                              Text("Majority's best\nchoice",),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text('Look free and attractive',style: TextStyle(fontSize: 10.0,color: Colors.black45),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0,right: 8.0 ),
                                child: Container(
                                    height: MediaQuery.of(context).size.height * 0.042,
                                    width: MediaQuery.of(context).size.width * 0.23,
                                    child: ElevatedButton(onPressed: () {},child: Text('data'),style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder( //to set border radius to button
                                          borderRadius: BorderRadius.circular(11.0)
                                      ),))),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  Row(
                    children: [
                      CircelMenus(imgName: 'assets_img/clmodelman.jpg',text: "Men's Fashion"),
                      CircelMenus(imgName: 'assets_img/clmodel.jpg',text: "Woman's Fashion"),
                      CircelMenus(imgName: 'assets_img/clmodel2.jpeg',text: "Jewelery"),
                      CircelMenus(imgName: 'assets_img/clmodel3.jpg',text: "Electronic"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}
