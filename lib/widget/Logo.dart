import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo_Widget extends StatelessWidget {
  const Logo_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: MediaQuery.of(context).size.height / 2 - 165,
      left: MediaQuery.of(context).size.width / 2 - 60,
      child: SvgPicture.asset("assets/Logo/logo.svg"),
    );
  }
}
