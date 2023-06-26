import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizTwo extends StatefulWidget {
  const QuizTwo({super.key});

  @override
  State<QuizTwo> createState() => _QuizTwoState();
}

class _QuizTwoState extends State<QuizTwo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Question 2 of 2', style: AppTypography.kLight14),
        Text(
          'What creates space and\ndifference between elements in\nyour design? ',
          style: AppTypography.kBold24,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50.h),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: selectedIndex == index ? 80.h : 60.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: selectedIndex == index
                        ? AppColors.kPrimary
                        : AppColors.kWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Contrast', style: AppTypography.kBold16),
                      Container(
                        height: 24.h,
                        width: 24.w,
                        padding: EdgeInsets.all(5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: AppColors.kSecondary.withOpacity(0.05),
                        ),
                        child: selectedIndex == index
                            ? Icon(
                                Icons.done,
                                color: AppColors.kWhite,
                                size: 16.h,
                              )
                            : const SizedBox(),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 20.h),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
