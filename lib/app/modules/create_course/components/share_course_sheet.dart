import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/create_course/components/gift_course_card.dart';
import 'package:eden_learning_app/app/modules/message/components/online_card.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShareCourseSheet extends StatelessWidget {
  const ShareCourseSheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(AppSpacing.twentyVertical),
          child: CustomIconButton(
            onTap: () {
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
            color:
                isDarkMode(context) ? AppColors.kSecondary : AppColors.kWhite,
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
              const GiftCourseCard(),
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
                            child: const Icon(Icons.add,
                                color: AppColors.kPrimary),
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
