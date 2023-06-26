import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  final PageController controller;
  final int dotsLength;
  final double? height;
  final double? width;
  const CustomIndicator({
    required this.controller,
    required this.dotsLength,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: dotsLength,
      onDotClicked: (index) {},
      effect: SlideEffect(
        dotColor: AppColors.kSecondary.withOpacity(0.3),
        activeDotColor: AppColors.kSecondary,
        dotHeight: height ?? 8.h,
        dotWidth: width ?? 8.w,
      ),
    );
  }
}
