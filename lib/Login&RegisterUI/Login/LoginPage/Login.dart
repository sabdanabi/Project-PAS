import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_pas/Login&RegisterUI/Login/ReusedLogin/MyLable.dart';
import 'package:project_pas/Login&RegisterUI/Register/RgisterPage/RegisterPage.dart';
import 'package:project_pas/controllers/LoginController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Register/ReusedRgister/MyTextButton.dart';
import '../ReusedLogin/MyButtinText.dart';
import '../ReusedLogin/MyTextField.dart';
import '../ReusedLogin/SquareTitle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginPageController controller = Get.put(LoginPageController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              // logo
              Image.asset(
                'assets_img/shappe.png',
                width: MediaQuery.of(context).size.width * 1 / 5,
              ),

              const SizedBox(height: 15),

              MyLabel2(text: "To Sign In, you can use an existing \n account from the site Shappe\n"),

              const SizedBox(height: 15),

              Column(
                children: [
                  MyLabel(text: 'Email'),
                  MyTextField(
                    controller: controller.emailTextEditingController,
                    hintText: 'Enter Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Password'),
                  MyTextFieldPassword(controller: controller.passwordTextEditingController, hintText: 'Enter Password')
                ],
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              MyButtonLogin(
                usernameTextEditing:
                controller.emailTextEditingController,
                passwordTextEditing:
                controller.passwordTextEditingController,
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'assets_img/appel.png'),
                  SizedBox(width: 25),
                  SquareTile(imagePath: 'assets_img/google.png')
                ],
              ),

              const SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account ?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 1),
                  TextButton(
                    onPressed: ()  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      'Create Account',
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
    )
    ;
  }
}



