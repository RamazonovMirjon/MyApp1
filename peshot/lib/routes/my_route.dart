import 'package:flutter/material.dart';
import 'package:peshot/screens/intro_page.dart';
import 'package:peshot/screens/sign_in_page.dart';
import 'package:peshot/screens/sign_up_page.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    var argument = settings.arguments;
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: ((context) => IntroPage()));
      case "/signin":
        return MaterialPageRoute(builder: ((context) => const SignInPage()));
      case "/signup":
        return MaterialPageRoute(builder: ((context) => const SignUpPage()));
      case "/info":
        return MaterialPageRoute(builder: ((context) => IntroPage()));
      case "/intro":
        return MaterialPageRoute(builder: ((context) => IntroPage()));

      default:
    }
    return null;
  }
}
