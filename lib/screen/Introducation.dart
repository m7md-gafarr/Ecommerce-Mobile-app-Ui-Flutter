import 'package:example_1_ecommerce_onboarding/constant/colors.dart';
import 'package:example_1_ecommerce_onboarding/model/introducation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroducationScreen extends StatefulWidget {
  const IntroducationScreen({super.key});

  @override
  State<IntroducationScreen> createState() => _IntroducationScreen();
}

class _IntroducationScreen extends State<IntroducationScreen> {
  List<IntroducationModel> list = [
    IntroducationModel(
      iamge: "assets/image/Illustraions.svg",
      PrimaryText: "Discover Our Products",
      description:
          "Browse thousands of products, from fashion to tech. Find what you love, effortlessly.",
    ),
    IntroducationModel(
      iamge: "assets/image/Illustraions1.svg",
      PrimaryText: "Hassle-Free Checkout",
      description:
          "Seamless payments and speedy delivery. Start shopping smarter today.",
    ),
    IntroducationModel(
      iamge: "assets/image/Illustraions2.svg",
      PrimaryText: "Easy and Happy Shopping",
      description: "Start shopping now and enjoy a world of convenience!",
    ),
  ];
  IntroducationModel? IntroModel;

  late PageController _pageController;
  late PageController _pageControllerimage;
  bool _islastpage = false;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageControllerimage = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageControllerimage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Primary_2,
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              if (value == 2) {
                setState(() {
                  _islastpage = true;
                });
              } else {
                setState(() {
                  _islastpage = false;
                });
              }
            },
            controller: _pageControllerimage,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) => image_widget(list[index]),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 2) + 60,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: SmoothPageIndicator(
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear,
                );
                _pageControllerimage.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear,
                );
              },
              controller: _pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                activeDotColor: Wihte,
                dotHeight: 5,
                dotWidth: 7,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height -
                  ((MediaQuery.of(context).size.height / 2 + 140)),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) => bottom_widget(list[index]),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height) - 120,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_pageController.page == 2 &&
                      _pageControllerimage.page == 2) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "Login",
                      (route) => true,
                    );
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );

                    _pageControllerimage.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                },
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
                child: _islastpage == true
                    ? const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Black,
                          fontFamily: "Soar",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : const Text(
                        'Next',
                        style: TextStyle(
                          color: Black,
                          fontFamily: "Soar",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottom_widget(IntroducationModel introducationModel) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        Text(
          introducationModel.PrimaryText,
          style: const TextStyle(
            color: Wihte,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: "Sora",
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            introducationModel.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Primary_3,
              fontFamily: "inter",
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        const Spacer(
          flex: 4,
        ),
      ],
    );
  }

  Widget image_widget(IntroducationModel introducationModel) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            SvgPicture.asset(
              introducationModel.iamge,
              height: MediaQuery.of(context).size.width - 50,
            ),
          ],
        ),
      ),
    );
  }
}
