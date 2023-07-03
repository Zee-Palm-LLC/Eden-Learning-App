import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/enums/activity_type.dart';
import 'package:eden_learning_app/app/models/activity.dart';
import 'package:eden_learning_app/app/modules/profile/components/profile_image_card.dart';
import 'package:eden_learning_app/app/modules/widgets/custom_painter/curve_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  const ActivityCard({required this.activity, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 55.h,
          width: 50.w,
          child: Stack(
            children: [
              ClipPath(
                clipper:
                    activity.type == ActivityType.review ? CurveClipper() : null,
                child: ProfileImageCard(
                  size: 50.h,
                  image: activity.userImage,
                ),
              ),
              if (activity.type == ActivityType.review)
                Positioned(
                  bottom: 0,
                  right: 3.w,
                  child: SvgPicture.asset(
                    AppAssets.kHappy,
                    height: 16.h,
                    color: AppColors.kPrimary,
                  ),
                )
              else
                const SizedBox.shrink(),
            ],
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
