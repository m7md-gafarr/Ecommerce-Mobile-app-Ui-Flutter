import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constant/colors.dart';
import '../widget/Button.dart';
import '../widget/ButtonBake.dart';
import '../widget/TextFeild.dart';

class ResetYourPasswordScreen extends StatefulWidget {
  const ResetYourPasswordScreen({super.key});

  @override
  State<ResetYourPasswordScreen> createState() => _ResetYourPasswordScreen();
}

class _ResetYourPasswordScreen extends State<ResetYourPasswordScreen> {
  bool obscureText = true;
  _obscureText_fun() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  FocusNode focusScope = FocusNode();
  @override
  void initState() {
    focusScope.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    focusScope.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Primary_2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Buttonback_Widget(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(
              flex: 2,
            ),
            const Text(
              "Rest your Password",
              style: TextStyle(
                color: Wihte,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Sora",
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: (MediaQuery.of(context).size.height) -
                  (MediaQuery.of(context).size.height / 2 + 20),
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
                      "Create New Password",
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
                        "Create a new password, please don’t forget this one too.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Primary_3,
                          fontFamily: "inter",
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField_Widget(
                      keyboardType: TextInputType.visiblePassword,
                      focusNode: focusScope,
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
                      text: "Create new password",
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            onVisible: () {
                              Future.delayed(
                                const Duration(seconds: 1),
                                () => Navigator.pushNamed(context, "Login"),
                              );
                            },
                            duration: const Duration(seconds: 1),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: success,
                            content: const Center(
                              child: Text(
                                "Password has been updated",
                                style: TextStyle(
                                  color: Wihte,
                                  fontSize: 15,
                                  fontFamily: "Sora",
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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
