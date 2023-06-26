import 'dart:math';

import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizOne extends StatefulWidget {
  const QuizOne({
    super.key,
  });

  @override
  State<QuizOne> createState() => _QuizOneState();
}

class _QuizOneState extends State<QuizOne> {
  late PageController pageController;
  double currentPage = 0.0;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.56);
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page ?? 0.0;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Question 1 of 2', style: AppTypography.kLight14),
        Text(
          'What creates space and\ndifference between elements\nin your design? ',
          style: AppTypography.kBold24,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50.h),
        Expanded(
          child: PageView.builder(
            itemCount: 3,
            controller: pageController,
            itemBuilder: (context, index) {
              return ContrastCard(
                index: index,
                currentPage: currentPage,
                image: [
                  AppAssets.kRepetition,
                  AppAssets.kContrast,
                  AppAssets.kSymmetry,
                ][index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class ContrastCard extends StatelessWidget {
  final double currentPage;
  final int index;
  final String image;

  const ContrastCard({
    required this.currentPage,
    required this.index,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = (index - currentPage).abs().clamp(0.0, 1.0);
    final isCenterCard = index == currentPage.round();

    return Transform.rotate(
      angle: pi * value,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250.h,
            width: 200.w,
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
          ),
          if (isCenterCard)
            Container(
              height: 40.h,
              width: 40.w,
              margin: EdgeInsets.only(top: 251.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kPrimary,
              ),
              child: const Icon(
                Icons.check,
                color: AppColors.kWhite,
              ),
            ),
        ],
      ),
    );
  }
}
