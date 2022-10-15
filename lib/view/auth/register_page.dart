import 'package:e_commerce_getx/constance.dart';
import 'package:e_commerce_getx/core/view_model/auth_view_model.dart';
import 'package:e_commerce_getx/view/auth/login_page.dart';
import 'package:e_commerce_getx/widgets/customTextFormField.dart';
import 'package:e_commerce_getx/widgets/custom_button.dart';
import 'package:e_commerce_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


class RegisterPage extends GetWidget<AuthViewModel> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   RegisterPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap:() => Get.off(LoginScreen()),
          child: Icon(Icons.arrow_back,color: Colors.black,)),
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
                       text: "SIGN UP",
                       fontSize: 30,
                     ),
                     GestureDetector(
                   onTap: () {
                     Get.to(LoginScreen());
                   },
                   child: const CustomText(
                     text: "Sign In",
                     color: primaryColor,
                     fontSize: 18,
                   ),
                 ),
                ],
              ),
                 
            
              
               const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                text: 'Name',
                hintText: 'Pase',
                onSave: (value) {
                  controller.name = value;
                },
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
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

                  _formKey.currentState!.save();

                  if (_formKey.currentState!.validate()) {
                    controller.createAccountWithEmailAndPassword();
                  }
                },
                text: 'SIGN UP',
              ),
              const SizedBox(
                height: 10,
              ),
             
             
            ],
          ),
        ),
      ),
    );
  }
}

//&$@Deeb@$&0993196934@$&