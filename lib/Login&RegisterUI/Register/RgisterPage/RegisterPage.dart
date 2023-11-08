import 'package:flutter/material.dart';

import '../../Login/ReusedLogin/MyButtinText.dart';
import '../../Login/ReusedLogin/MyLable.dart';
import '../../Login/ReusedLogin/MyTextField.dart';
import '../../Login/ReusedLogin/SquareTitle.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final FirstNameController = TextEditingController();
  final LastNameController = TextEditingController();
  final EmailController = TextEditingController();
  final SetPasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();

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
                  MyLabel(text: 'First Name'),
                  MyTextField(
                    controller: FirstNameController,
                    hintText: 'Enter your first name',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Last Name'),
                  MyTextField(
                    controller: LastNameController,
                    hintText: 'Enter your Last name',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Email'),
                  MyTextField(
                    controller: EmailController,
                    hintText: 'Enter your E-mail',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Set a Password'),
                  MyTextFieldPassword(
                      controller: SetPasswordController,
                      hintText: 'Enter Your Password'),
                  const SizedBox(height: 10),
                  MyLabel(text: 'Confirm a Password'),
                  MyTextFieldPassword(
                      controller: ConfirmPasswordController,
                      hintText: 'Confirm Your Password'),
                ],
              ),
              const SizedBox(height: 40),
              MyButton(
                onTap: signUserIn,
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
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
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
