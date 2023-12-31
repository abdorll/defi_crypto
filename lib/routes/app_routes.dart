import 'package:flutter/material.dart';
import 'package:defi_crypto/views/intro_screens.dart';
import 'package:defi_crypto/views/splash_screen.dart';
import 'package:defi_crypto/views/web_view_page.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WebPage.webPage:
        return screenOf(screenName: WebPage());
      case IntroScreens.introScreens:
        return screenOf(screenName: IntroScreens());
      case SplashScreen.splashScreen:
        return screenOf(screenName: SplashScreen());
      default:
        return screenOf(screenName: Container());
    }
  }
}

MaterialPageRoute screenOf({required Widget screenName}) {
  return MaterialPageRoute(builder: (context) => screenName);
}
