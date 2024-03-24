import 'package:example_1_ecommerce_onboarding/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Buttonback_Widget extends StatelessWidget {
  const Buttonback_Widget({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: const Icon(
        Iconsax.back_square4,
        color: Wihte,
        size: 27,
      ),
    );
  }
}
