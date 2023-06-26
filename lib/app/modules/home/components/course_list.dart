import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/home/course_detail/course_detail_view.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Row(
            children: [
              Text('Trending Courses', style: AppTypography.kBold18),
              const Spacer(),
              CustomTextButton(
                onPressed: () {},
                text: 'See All',
                color: AppColors.kSecondary.withOpacity(0.3),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSpacing.twentyVertical),
        SizedBox(
          height: 280.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.w),
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              return CourseCard(
                course: coursesList[index],
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 30.w),
            itemCount: coursesList.length,
          ),
        ),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to<Widget>(() => CourseDetailView(
              course: course,
            ));
      },
      child: Container(
        width: 264.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: AppColors.kWhite,
          boxShadow: [AppColors.defaultShadow],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Hero(
                tag: course.image,
                child: Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppSpacing.radiusFifteen),
                    ),
                    image: DecorationImage(
                      image: AssetImage(course.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    height: 43.h,
                    width: 43.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.kWhite,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: SvgPicture.asset(AppAssets.kBookMark),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.all(AppSpacing.tenVertical),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.category.name,
                      style: AppTypography.kBold14
                          .copyWith(color: AppColors.kPrimary),
                    ),
                    SizedBox(height: AppSpacing.tenVertical),
                    Text(
                      course.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.kBold20,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          '\$ ${course.price}',
                          style: AppTypography.kBold14,
                        ),
                        const Spacer(),
                        Text(
                          'By ${course.owner.name}',
                          style: AppTypography.kLight16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
