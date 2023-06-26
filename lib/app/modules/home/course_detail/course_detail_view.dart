import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/home/components/course_owner_card.dart';
import 'package:eden_learning_app/app/modules/home/course_detail/course_lessons_view.dart';
import 'package:eden_learning_app/app/modules/home/course_detail/project_view.dart';
import 'package:eden_learning_app/app/modules/home/course_detail/reviews_view.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/buttons.dart';
import 'package:eden_learning_app/app/modules/widgets/custom_painter/price_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CourseDetailView extends StatelessWidget {
  final Course course;
  const CourseDetailView({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.all(7.h),
            child: CustomIconButton(
              onTap: () {
                Get.back<void>();
              },
              iconColor: AppColors.kWhite,
              color: AppColors.kPrimary.withOpacity(0.41),
              icon: AppAssets.kArrowBackIos,
            ),
          ),
          actions: [
            CustomIconButton(
              iconColor: AppColors.kWhite,
              color: AppColors.kPrimary.withOpacity(0.4),
              icon: AppAssets.kMoreVert,
              onTap: () {},
            ),
            SizedBox(width: 20.w),
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Hero(
                tag: course.image,
                child: Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(course.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 240.h),
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                  ),
                ),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 30..h),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.twentyHorizontal,
                        ),
                        child: Text(
                          course.name,
                          style: AppTypography.kBold24,
                        ),
                      ),
                      SizedBox(height: AppSpacing.tenVertical),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.twentyHorizontal,
                        ),
                        child: Text(
                          '${course.lessons.length} Lessons  • 1h 30m',
                          style: AppTypography.kLight14,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.twentyHorizontal,
                        ),
                        child: Row(
                          children: [
                            const PriceTag(),
                            SizedBox(width: 10.w),
                            Text(
                              '\$ ${course.price.toInt()}',
                              style: AppTypography.kLight16,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSpacing.twentyVertical),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.twentyHorizontal,
                        ),
                        child: Text(
                          course.description,
                          style: AppTypography.kLight16,
                        ),
                      ),
                      SizedBox(height: AppSpacing.twentyVertical),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.twentyHorizontal,
                        ),
                        child: CourseOwnerCard(
                          user: course.owner,
                        ),
                      ),
                      SizedBox(height: AppSpacing.thirtyVertical),
                      TabBar(
                        physics: const NeverScrollableScrollPhysics(),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: AppTypography.kBold20,
                        labelColor: AppColors.kSecondary,
                        unselectedLabelStyle: AppTypography.kBold18,
                        unselectedLabelColor:
                            AppColors.kSecondary.withOpacity(0.8),
                        indicatorColor: AppColors.kAccent1,
                        tabs: const [
                          Tab(
                            text: 'Lessons',
                          ),
                          Tab(
                            text: 'Reviews',
                          ),
                          Tab(
                            text: 'Projects',
                          ),
                        ],
                      ),
                      SizedBox(height: 30..h),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.only(top: 30.h),
                        decoration: BoxDecoration(
                          color: AppColors.kPrimary.withOpacity(0.08),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(AppSpacing.radiusThirty),
                          ),
                        ),
                        child: TabBarView(
                          children: [
                            CourseLessonsView(
                              lesson: course.lessons,
                            ),
                            const ReviewsView(),
                            const ProjectView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
