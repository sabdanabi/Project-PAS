import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/Profile/Profilepage.dart';
import 'package:project_pas/controllers/RegisterController.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Login/ReusedLogin/MyButtinText.dart';
import '../../Login/ReusedLogin/MyLable.dart';
import '../../Login/ReusedLogin/MyTextField.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  RegisterPageController controller = Get.put(RegisterPageController());

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyLabel1(text: 'Register your account\n'),
              Column(
                children: [
                  MyLabel(text: 'Username'),
                  MyTextField(
                    controller: controller.usernameTextEditingController,
                    hintText: 'Enter your Username',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Email'),
                  MyTextField(
                    controller: controller.emailTextEditingController,
                    hintText: 'Enter your E-mail',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Set a Password'),
                  MyTextFieldPassword(
                      controller: controller.passwordTextEditingController,
                      hintText: 'Enter Your Password'),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 40),
              MyButton(
                emailTextEditing:
                controller.emailTextEditingController,
                passwordTextEditing:
                controller.passwordTextEditingController,
                usernameTextEditing:
                controller.usernameTextEditingController,
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/login");
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
