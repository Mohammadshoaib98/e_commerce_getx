import 'package:e_commerce_getx/constance.dart';
import 'package:e_commerce_getx/core/view_model/auth_view_model.dart';
import 'package:e_commerce_getx/view/auth/register_page.dart';
import 'package:e_commerce_getx/view/home_view.dart';
import 'package:e_commerce_getx/widgets/customTextFormField.dart';
import 'package:e_commerce_getx/widgets/custom_button.dart';
import 'package:e_commerce_getx/widgets/custom_button_social.dart';
import 'package:e_commerce_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               const   CustomText(
                    text: "WELCOME",
                    fontSize: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(RegisterPage());
                    },
                    child: const CustomText(
                      text: "Sign Up",
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomText(
                text: 'Sign in to Continue',
                fontSize: 14,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                text: 'Email',
                hintText: 'iamdavid@gmail.com',
                onSave: (value) {
                  controller.email = value;
                },
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                text: 'Password',
                hintText: '**********',
                onSave: (value) {
                  controller.password = value;
                },
                validator: (value) {
                  if (value == null) {
                    print('error');
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text: 'Forgot Password?',
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                onPressed: () {
                  // _formKey.currentState?.save();

                  // if (_formKey.currentState!.validate()) {
                  //   controller.signInWithEmailAndPassword();
                  // }
                  Get.to(()=>HomePage());
                },
                text: 'SIGN IN',
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonSocial(
                text: 'Sign In with Facebook',
                onPressed: () {
               //   controller.facebookSignInMethod();
                },
                pathImage: 'assets/images/facebook.png',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonSocial(
                text: 'Sign In with Google',
                onPressed: () {
                  controller.googleSignInMethod();
                },
                pathImage: 'assets/images/google.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

