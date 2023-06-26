import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  const ActivityCard({required this.activity, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            image: DecorationImage(
              image: NetworkImage(activity.userImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 15.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(activity.userName, style: AppTypography.kBold16),
            SizedBox(height: 2.h),
            Text(
              activity.activityInfo,
              style: AppTypography.kLight14.copyWith(
                color: AppColors.kSecondary.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
