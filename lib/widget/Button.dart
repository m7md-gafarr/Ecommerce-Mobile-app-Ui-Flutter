import 'package:flutter/material.dart';

import '../constant/colors.dart';

class Button_Widget extends StatelessWidget {
  const Button_Widget({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          fixedSize: Size(MediaQuery.of(context).size.width - 20, 56),
          backgroundColor: Primary_1,
          textStyle: const TextStyle(
            color: Black,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Black,
            fontFamily: "Soar",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ));
  }
}
