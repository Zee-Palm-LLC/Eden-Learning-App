import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/message/components/online_card.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShareCourseSheet extends StatelessWidget {
  const ShareCourseSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(AppSpacing.twentyVertical),
          child: CustomIconButton(
            onTap: (){
              Get.back<void>();
            },
            color: AppColors.kWhite.withOpacity(0.15),
            iconColor: AppColors.kWhite,
            icon: AppAssets.kArrowBackIos,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.r),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 100.h),
              Text('Gift a Course', style: AppTypography.kBold24),
              SizedBox(height: 8.h),
              Text(
                'Make someone’s day by surprising \nthem with a course they’d love.',
                style: AppTypography.kLight16,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              Container(
                padding: EdgeInsets.all(12.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.kWhite,
                  boxShadow: [AppColors.defaultShadow],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSpacing.radiusTen),
                        image: DecorationImage(
                          image: AssetImage(coursesList[0].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(coursesList[0].name, style: AppTypography.kBold16),
                          SizedBox(height: 20.h),
                          Text(
                            '${coursesList[0].lessons.length} Lessons',
                            style: AppTypography.kLight14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              SizedBox(
                height: 85.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: AppColors.kPrimary.withOpacity(0.15),
                            ),
                            child: const Icon(Icons.add, color: AppColors.kPrimary),
                          ),
                        ],
                      );
                    } else if (index <= onlinePeople.length) {
                      final data = onlinePeople[index - 1];
                      return OnlineCard(
                        online: data,
                      );
                    }
                    return const SizedBox();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 8.w);
                  },
                  itemCount: onlinePeople.length + 1,
                ),
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              PrimaryButton(onTap: () {}, text: 'Send Gift'),
              SizedBox(height: AppSpacing.twentyVertical),
            ],
          ),
        ),
      ],
    );
  }
}
