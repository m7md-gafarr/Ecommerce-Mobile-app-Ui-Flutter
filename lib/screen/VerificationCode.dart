import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../constant/colors.dart';
import '../widget/Button.dart';
import '../widget/ButtonBake.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreen();
}

class _VerificationCodeScreen extends State<VerificationCodeScreen> {
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
                    "Verification Code",
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
                      "You need to enter 4-digit code we send to your Phone number.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Primary_3,
                        fontFamily: "inter",
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Pinput(
                    keyboardType: TextInputType.number,
                    showCursor: false,
                    focusNode: focusScope,
                    defaultPinTheme: PinTheme(
                      textStyle: const TextStyle(
                        color: Wihte,
                        fontFamily: "Sora",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Primary_3,
                          width: .3,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: Primary_2,
                      ),
                      height: 60,
                      width: 60,
                    ),
                    focusedPinTheme: PinTheme(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Primary_3,
                          width: 1.3,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        color: Primary_2,
                      ),
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Button_Widget(
                    text: "Confirm",
                    onPressed: () {
                      Navigator.pushNamed(context, "ResetPassword");
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't get the code yet ? ",
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
                        onPressed: () {},
                        child: const Text(
                          "Resend",
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
        ],
      ),
    );
  }
}
