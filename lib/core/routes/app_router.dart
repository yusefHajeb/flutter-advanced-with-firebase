import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/routes/routes.dart';
import 'package:flutter_advanced_with_firebase/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_with_firebase/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route genratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Text('Error'),
                ));
    }
  }
}
