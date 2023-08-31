import 'package:flutter/material.dart';
import 'package:defi_crypto/utils/images.dart';
import 'package:defi_crypto/widget/intro_screens_basics.dart';

class IntroScreens extends StatefulWidget {
  static const String introScreens = "intro_screens";
  const IntroScreens();

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  late PageController _pageController;

  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<IntroScreenItem> introScreenItems = [
      IntroScreenItem(
        itemIndex: 0,
        currentIndex: currentIndex,
        pageController: _pageController,
        illustrationPath: ImageOf.slide1,
        title: 'Welcome to DefiCrypto',
        subtitle:
            'Unlock the World of Crypto Investment and Trading – Your Pathway to Financial Freedom',
      ),
      IntroScreenItem(
        itemIndex: 1,
        currentIndex: currentIndex,
        pageController: _pageController,
        illustrationPath: ImageOf.slide2,
        title: 'Your Crypto Journey Starts Here',
        subtitle:
            'Navigate the Crypto Space with Confidence – Invest, Monitor, and Grow Your Portfolio Seamlessly.',
      ),
      IntroScreenItem(
        itemIndex: 2,
        currentIndex: currentIndex,
        pageController: _pageController,
        illustrationPath: ImageOf.slide3,
        title: 'Empowering Financial Futures',
        subtitle:
            'Embrace the Power of Cryptocurrency for Investment Growth – Your Gateway to Digital Wealth.',
      ),
    ];
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        children: introScreenItems,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
