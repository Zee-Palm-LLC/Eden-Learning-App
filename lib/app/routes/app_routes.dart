import 'package:eden_learning_app/app/modules/auth/sign_in_view.dart';
import 'package:eden_learning_app/app/modules/auth/sign_up_view.dart';
import 'package:eden_learning_app/app/modules/auth/welcome_view.dart';
import 'package:eden_learning_app/app/modules/landing_page/landing_page.dart';
import 'package:eden_learning_app/app/modules/onboarding/onboarding_view.dart';
import 'package:eden_learning_app/app/modules/profile/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String onboarding = '/';
  static String welcome = '/welcome';
  static String signIn = '/sign-in';
  static String signUp = '/sign-up';
  static String landing = '/landing-page';
  static String settings = '/settings';

  static List<GetPage> routes = [
    GetPage<Route<dynamic>>(
      name: onboarding,
      page: () => const OnboardingView(),
    ),
    GetPage<Route<dynamic>>(
      name: welcome,
      page: () => const WelcomeView(),
    ),
    GetPage<Route<dynamic>>(
      name: signIn,
      page: () => const SignInView(),
    ),
    GetPage<Route<dynamic>>(
      name: signUp,
      page: () => const SignUpView(),
    ),
    GetPage<Route<dynamic>>(
      name: landing,
      page: () => const LandingPage(),
    ),
    GetPage<Route<dynamic>>(
      name: settings,
      page: () => const SettingsView(),
    ),
  ];

  static String getOnboardingRoute() => onboarding;
  static String getWelcomeRoute() => welcome;
  static String getSignInRoute() => signIn;
  static String getSignUpRoute() => signUp;
  static String getLandingPageRoute() => landing;
  static String getSettingPageRoute() => settings;
}
