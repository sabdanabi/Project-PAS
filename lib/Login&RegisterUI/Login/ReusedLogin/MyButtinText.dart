import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/RegisterController.dart';

class MyButton extends StatelessWidget {
  final TextEditingController usernameTextEditing, emailTextEditing, passwordTextEditing;

  const MyButton({super.key,  required this.usernameTextEditing, required this.emailTextEditing, required this.passwordTextEditing});

  @override
  Widget build(BuildContext context) {
    RegisterPageController controller = Get.put(RegisterPageController());
    return GestureDetector(
      onTap:  () async {
        if(!(emailTextEditing.text == "" && passwordTextEditing.text == "")){
          await controller.signin(usernameTextEditing.text, emailTextEditing.text, passwordTextEditing.text);
          Get.offNamed('/login');
        } else if(controller.successfulRegister.value) {
          controller.message.value = "Please fill username and password";
          controller.successfulRegister.value = false;
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
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'productsans_bold',
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}