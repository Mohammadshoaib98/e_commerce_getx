import 'package:e_commerce_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final Function onSave;
  final Function validator;

  const CustomTextFormField({super.key,  this.text="",  this.hintText="", required this.onSave, required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                CustomText(
                  text:text ,
                  fontSize: 14,
                  color: Colors.black,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle:const TextStyle(color: Colors.grey),
                      fillColor: Colors.white),
                ),
              ],
            );
  }
}