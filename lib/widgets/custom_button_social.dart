import 'package:e_commerce_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String pathImage;
  final VoidCallback onPressed;
  const CustomButtonSocial(
      {super.key,
      required this.text,
      required this.pathImage,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: getColor(Colors.white, Colors.green.shade200)),
            child: Row(
              children:[
                const SizedBox(
                  width: 25,
                ),
                Image.asset(pathImage),
                const SizedBox(
                  width: 20,
                ),
                CustomText(
                  text: text,
                  fontWeight: FontWeight.w300,
                )
              ],
            ),
            onPressed:onPressed));
  }

  MaterialStateProperty<Color?>? getColor(Color color, Color colorPressed) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    }

    return MaterialStateProperty.resolveWith(getColor);
  }
}
