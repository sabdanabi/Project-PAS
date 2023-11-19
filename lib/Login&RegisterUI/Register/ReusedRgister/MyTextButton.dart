import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/LoginController.dart';

class MyButtonLogin extends StatelessWidget {

  const MyButtonLogin({super.key,required this.usernameTextEditing,
    required this.passwordTextEditing,});
  final TextEditingController usernameTextEditing, passwordTextEditing;

  @override
  Widget build(BuildContext context) {
    LoginPageController controller = Get.put(LoginPageController());

    return GestureDetector(
      onTap: () async {
        if(!(usernameTextEditing.text == "" && passwordTextEditing.text == "")){
          await controller.login(
              usernameTextEditing.text, passwordTextEditing.text);
          Get.offNamed('/landingPage');
        } else {
          controller.message.value = "Please fill username and password";
          controller.successfulLogin.value = false;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}