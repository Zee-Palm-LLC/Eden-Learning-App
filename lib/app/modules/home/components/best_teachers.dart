import 'dart:math';

import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/best_teachers_model.dart';
import 'package:eden_learning_app/app/modules/onboarding/components/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestTeachers extends StatefulWidget {
  const BestTeachers({super.key});

  @override
  State<BestTeachers> createState() => _BestTeachersState();
}

class _BestTeachersState extends State<BestTeachers> {
  late PageController _pageController;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.5);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.kPrimary.withOpacity(0.15),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: AppSpacing.thirtyVertical),
              Text(
                'Teachers of the Week',
                style: AppTypography.kBold18,
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              SizedBox(
                height: 260.h,
                child: PageView.builder(
                  itemCount: bestTeachers.length,
                  clipBehavior: Clip.none,
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return BestTeachersCard(
                      index: index,
                      pageController: _pageController,
                      teacher: bestTeachers[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 30.h),
              CustomIndicator(
                controller: _pageController,
                dotsLength: 3,
              ),
              SizedBox(height: 40.h),
             
            ],
          ),
        ],
      ),
    );
  }
}

class BestTeachersCard extends StatelessWidget {
  final PageController pageController;
  final int index;
  final BestTeachersModel teacher;
  const BestTeachersCard({
    required this.index,
    required this.pageController,
    required this.teacher,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        var value = 0.0;
        if (pageController.position.haveDimensions) {
          value = index.toDouble() - (pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 20..w, right: 20.w, top: 30.h),
                padding: EdgeInsets.only(
                  top: 50.h,
                  bottom: AppSpacing.thirtyVertical,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.kWhite,
                  boxShadow: [AppColors.defaultShadow],
                ),
                child: Column(
                  children: [
                    Text(teacher.name, style: AppTypography.kBold16),
                    Text(teacher.bio, style: AppTypography.kLight14),
                    const Spacer(),
                    SvgPicture.asset(AppAssets.kCrown),
                    SizedBox(height: 5.h),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: teacher.position == 1
                            ? AppColors.kAccent1
                            : teacher.position == 2
                                ? AppColors.kAccent2
                                : AppColors.kPrimary,
                      ),
                      child: Text(
                        '${teacher.position}',
                        style: AppTypography.kBold14
                            .copyWith(color: AppColors.kWhite),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: NetworkImage(teacher.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
