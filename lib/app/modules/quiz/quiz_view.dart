import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/onboarding/components/custom_indicator.dart';
import 'package:eden_learning_app/app/modules/quiz/components/quiz_one.dart';
import 'package:eden_learning_app/app/modules/quiz/components/quiz_two.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final _pageController = PageController();
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(7.h),
          child: CustomIconButton(
            onTap: () {
              if (selectedPageIndex == 0) {
                Get.back<void>();
              } else {
                _pageController.previousPage(
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.easeIn,
                );
              }
            },
            color: AppColors.kPrimary.withOpacity(0.15),
            icon: AppAssets.kArrowBackIos,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPageIndex = index;
                });
              },
              children: const [
                QuizOne(),
                QuizTwo(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSpacing.twentyVertical),
            child: CustomIndicator(
              controller: _pageController,
              dotsLength: 2,
              height: 5.h,
              width: MediaQuery.of(context).size.width / 3,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: PrimaryButton(
              onTap: () {
                if (selectedPageIndex == 0) {
                  _pageController.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                }
              },
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}
