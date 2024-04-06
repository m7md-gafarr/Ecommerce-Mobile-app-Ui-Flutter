import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

import '../constant/colors.dart';
import '../widget/Button.dart';
import '../widget/ButtonBake.dart';
import '../widget/Logo.dart';
import '../widget/TextFeild.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool obscureText = true;
  _obscureText_fun() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Primary_2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Buttonback_Widget(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          const Logo_Widget(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: (MediaQuery.of(context).size.height) -
                  (MediaQuery.of(context).size.height / 2 - 160),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 23),
                    const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Wihte,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Sora",
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        "Enter your details below",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Primary_3,
                          fontFamily: "inter",
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const TextField_Widget(
                      hintText: "Email",
                      obscureText: false,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                    const SizedBox(height: 15),
                    TextField_Widget(
                      hintText: "Password",
                      obscureText: obscureText,
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _obscureText_fun();
                        },
                        icon: obscureText
                            ? const Icon(Iconsax.eye_slash)
                            : const Icon(Iconsax.eye),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField_Widget(
                      hintText: "Confirm Password",
                      obscureText: obscureText,
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _obscureText_fun();
                        },
                        icon: obscureText
                            ? const Icon(Iconsax.eye_slash)
                            : const Icon(Iconsax.eye),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Button_Widget(
                      text: "Sing Up",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider_widget(),
                        const Text(
                          "   Or continue with   ",
                          style: TextStyle(
                            color: Wihte,
                            fontSize: 14,
                            fontFamily: "Sora",
                          ),
                        ),
                        Divider_widget()
                      ],
                    ),
                    const SizedBox(height: 15),
                    Social_Widget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Primary_3,
                            fontFamily: "inter",
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Primary_3.withOpacity(.2)),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 14,
                              color: Wihte,
                              fontFamily: "inter",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Social(Widget widget) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Primary_3.withOpacity(.2),
        backgroundColor: Black,
        fixedSize: const Size(120, 50),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Primary_3,
            width: .5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      child: widget,
    );
  }

  Widget Social_Widget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Social(
          SvgPicture.asset(
            "assets/icon/Google.svg",
          ),
        ),
        Social(
          SvgPicture.asset(
            "assets/icon/Appel.svg",
          ),
        ),
      ],
    );
  }

  Widget Divider_widget() {
    return const SizedBox(
      width: 80,
      child: Divider(
        thickness: 1,
        color: Primary_3,
      ),
    );
  }
}
