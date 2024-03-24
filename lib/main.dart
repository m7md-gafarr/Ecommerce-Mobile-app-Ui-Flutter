import 'package:example_1_ecommerce_onboarding/screen/Login.dart';
import 'package:example_1_ecommerce_onboarding/screen/ResetPassword.dart';
import 'package:example_1_ecommerce_onboarding/screen/ResetYourPassword.dart';
import 'package:example_1_ecommerce_onboarding/screen/SingUp.dart';
import 'package:example_1_ecommerce_onboarding/screen/Splash.dart';
import 'package:example_1_ecommerce_onboarding/screen/Introducation.dart';
import 'package:example_1_ecommerce_onboarding/screen/VerificationCode.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     builder: (context) => const MyApp(),
  //   ),
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routes: {
          "Splash": (context) => const SplachScreen(),
          "Intro": (context) => const IntroducationScreen(),
          "Login": (context) => const LoginScreen(),
          "SingUp": (context) => const SingUpScreen(),
          "Reset": (context) => const ResetPasswordScreen(),
          "Verification": (context) => const VerificationCodeScreen(),
          "ResetPassword": (context) => const ResetYourPasswordScreen()
        },
        initialRoute: "Splash",
      ),
    );
  }
}
