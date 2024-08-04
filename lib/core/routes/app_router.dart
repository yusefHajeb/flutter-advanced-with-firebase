import 'package:flutter/material.dart';
import 'package:flutter_advanced_with_firebase/core/routes/routes.dart';
import 'package:flutter_advanced_with_firebase/features/home_screen/ui/home_screen.dart';
import 'package:flutter_advanced_with_firebase/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_with_firebase/features/onboarding/onboarding_screen.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/logic/cubit/sing_up_cubit.dart';
import 'package:flutter_advanced_with_firebase/features/sign_up/ui/sing_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/cubit/login_cubet_cubit.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route genratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubet>(),
                  child: const LoginScreen(),
                ));
      case Routes.singUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SingUpCubit>(),
            child: const SingUpScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Text('Error'),
                ));
    }
  }
}
