import 'package:example_1_ecommerce_onboarding/constant/colors.dart';
import 'package:flutter/material.dart';

class TextField_Widget extends StatelessWidget {
  const TextField_Widget({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    @required this.suffixIcon,
    @required this.focusNode,
    @required this.keyboardType,
  });
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final String? hintText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        keyboardType: keyboardType,
        focusNode: focusNode,
        style: const TextStyle(color: Wihte),
        obscureText: obscureText,
        cursorColor: Primary_1,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconColor: Primary_3,
          suffixIconColor: Primary_3,
          fillColor: Primary_2,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Primary_3,
            fontFamily: "Sora",
            fontSize: 15,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Primary_3,
              width: .3,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Primary_3,
              width: 1.3,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}
