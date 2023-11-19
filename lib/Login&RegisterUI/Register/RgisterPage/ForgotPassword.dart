import 'package:flutter/material.dart';

import '../../Login/ReusedLogin/MyButtinText.dart';
import '../../Login/ReusedLogin/MyTextField.dart';
import '../../Login/ReusedLogin/SquareTitle.dart';





class ForgotPage extends StatelessWidget {
  ForgotPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              
              Text('Forgot Password ?',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 20,
              ),),

              const SizedBox(height: 10),

              Text(
                "Enter Your Email addres below, and if \n"
                    "an account exists, we'll send you a link \n"
                    "to reset your password \n",
                style:
                TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 50),

              Column(
                children: [
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Enter Your Email',
                    obscureText: false,
                  ),

                ],
              ),
              const SizedBox(height: 150),


              MyButton(
                onTap: signUserIn,
              ),

            ],
          ),
        ),
      ),
    );
  }
}