import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/activity.dart';
import 'package:eden_learning_app/app/modules/activity/components/activity_card.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: Scaffold(
        backgroundColor: AppColors.kPrimary.withOpacity(0.08),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: customOverlay,
          title: Text(
            'Activity',
            style: AppTypography.kBold32.copyWith(color: AppColors.kSecondary),
          ),
          actions: [
            CustomIconButton(
              onTap: () {},
              color: AppColors.kPrimary.withOpacity(0.15),
              icon: AppAssets.kFilter,
            ),
            SizedBox(width: 20.w),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.r),
            ),
            color: AppColors.kWhite,
          ),
          child: SingleChildScrollView(
            child: AnimationLimiter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    Text('Today', style: AppTypography.kBold18),
                    SizedBox(height: 20.h),
                    MediaQuery.removePadding(
                      context: context,
                      removeBottom: true,
                      child: ListView.separated(
                        itemCount: todayActivities.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 10.h),
                        itemBuilder: (context, index) {
                          return ActivityCard(
                            activity: todayActivities[index],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Text('Recent Week', style: AppTypography.kBold18),
                    SizedBox(height: AppSpacing.twentyVertical),
                    ListView.separated(
                      itemCount: recentWeek.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10.h),
                      itemBuilder: (context, index) {
                        return ActivityCard(
                          activity: recentWeek[index],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
