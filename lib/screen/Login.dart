import 'package:example_1_ecommerce_onboarding/constant/colors.dart';
import 'package:example_1_ecommerce_onboarding/widget/Logo.dart';
import 'package:example_1_ecommerce_onboarding/widget/TextFeild.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../widget/Button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  _obscureText_fun() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Primary_2,
      body: Stack(
        children: [
          const Logo_Widget(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: (MediaQuery.of(context).size.height) -
                  (MediaQuery.of(context).size.height / 2 - 40),
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
                    const SizedBox(height: 25),
                    const Text(
                      "Welcome Back!",
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
                          fontSize: 13,
                          color: Primary_3,
                          fontFamily: "inter",
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const TextField_Widget(
                      hintText: "User-name",
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
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Primary_3.withOpacity(.2)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "Reset");
                          },
                          child: const Text(
                            "Forget Password ?",
                            style: TextStyle(
                              fontSize: 13,
                              color: Wihte,
                              fontFamily: "inter",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Button_Widget(
                      text: "Sing In",
                      onPressed: () {
                        Navigator.pushNamed(context, "SingUp");
                      },
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
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
                            Navigator.pushNamed(context, "SIngUp");
                          },
                          child: const Text(
                            "Sign Up",
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
}
