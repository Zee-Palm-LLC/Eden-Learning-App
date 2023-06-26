import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarningCard extends StatelessWidget {
  final String title;
  final String amount;
  final void Function() onSwipe;
  const EarningCard({
    required this.amount,
    required this.title,
    required this.onSwipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kPrimary.withOpacity(0.2),
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTypography.kLight16),
          Text(amount, style: AppTypography.kLight30),
          SizedBox(height: AppSpacing.thirtyVertical),
          CustomSwipeButton(
            onSwipe: onSwipe,
          ),
        ],
      ),
    );
  }
}
