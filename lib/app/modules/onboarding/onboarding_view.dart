import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/onboarding.dart';
import 'package:eden_learning_app/app/modules/onboarding/components/custom_indicator.dart';
import 'package:eden_learning_app/app/modules/onboarding/components/onboarding_card.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({
    super.key,
  });

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;
    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode(context) ? defaultOverlay : customOverlay,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _currentIndex > 0
          ? CustomBackAppBar(
              leadingCallback: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
            )
          : null,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              const WaveCard(),
              Positioned(
                top: 100.h,
                child: Image.asset(onboardingList[_currentIndex].image),
              ),
            ],
          ),
          SizedBox(height: 90.h),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingList.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingCard(
                  onboarding: onboardingList[index],
                );
              },
            ),
          ),
          CustomIndicator(
            controller: _pageController,
            dotsLength: onboardingList.length,
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: PrimaryButton(
              onTap: () {
                if (_currentIndex == (onboardingList.length - 1)) {
                  Get.offAllNamed<dynamic>(AppRoutes.getWelcomeRoute());
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              text: _currentIndex == (onboardingList.length - 1)
                  ? 'Get Started'
                  : 'Continue',
            ),
          ),
          CustomTextButton(
            onPressed: () {
              if (_currentIndex == (onboardingList.length - 1)) {
                Get.offAllNamed<dynamic>(AppRoutes.getSignInRoute());
              } else {
                Get.offAllNamed<dynamic>(AppRoutes.getWelcomeRoute());
              }
            },
            text: _currentIndex == (onboardingList.length - 1)
                ? 'Sign in instead'
                : 'Skip',
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
