import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constant/colors.dart';
import '../widget/Button.dart';
import '../widget/ButtonBake.dart';
import '../widget/TextFeild.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
              "Forget Password",
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
      backgroundColor: Primary_2,
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
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    "Reset your Password",
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
                      "We need your Email so we can send you the password reset code.",
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
                    keyboardType: TextInputType.emailAddress,
                    focusNode: focusScope,
                    hintText: "Email",
                    obscureText: false,
                    prefixIcon: const Icon(Iconsax.send_1),
                  ),
                  const SizedBox(height: 30),
                  Button_Widget(
                    text: "Send Code",
                    onPressed: () {
                      Navigator.pushNamed(context, "Verification");
                    },
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
