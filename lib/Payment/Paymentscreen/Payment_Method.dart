import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/Payment/Paymentscreen/Mycard.dart';
import 'package:project_pas/Payment/Reus/MyTextField.dart';

import '../../controllers/cart_controller.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController Expirydate = TextEditingController();
  TextEditingController CVV = TextEditingController();
  TextEditingController Namecard = TextEditingController();


  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _isChecked = false;
  void paymentMethod() {}

  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 100.0),
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  MyLabel(text: 'Card number'),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    controller: widget.cardNumberController,
                    hintText: 'Your Card Number',
                    obscureText: false,
                    imagePath: 'assets_img/logobank.png',
                  ),
                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 10),
                          Expanded(
                            child: MyTextField2(
                                controller: widget.Expirydate,
                                hintText: 'MM/YY',
                                obscureText: false),
                          ),
                          // SizedBox(height: 10),
                          Expanded(
                            child: MyTextField2(
                                controller: widget.CVV,
                                hintText: 'CVV',
                                obscureText: false),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      MyLabel(text: 'Name on Card'),
                      SizedBox(height: 10),
                      MyTextField3(
                          controller: widget.Namecard,
                          hintText: 'Card Name',
                          obscureText: false),
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            activeColor: Colors.cyan,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          MyLabel(text: 'Securely save card and details'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Imagee(image: 'assets_img/Bri.jpg'),
                          Imagee(image: 'assets_img/BNI.jpg'),
                          Imagee(image: 'assets_img/Mandiri.png'),
                          Imagee(image: 'assets_img/MC.png'),
                          Imagee(image: 'assets_img/Danamon.png'),
                        ],
                      ),
                      SizedBox(height: 30),
                      MyButton(onTap: () {
                        Get.offNamed('/landingPage');
                        controller.cartItem.clear();
                      }
                      ),
                    ],
                  ),],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(
                  key: UniqueKey(),
                  card: myCards[0],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
