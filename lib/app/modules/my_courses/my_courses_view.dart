import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/my_courses/my_course_list.dart';
import 'package:eden_learning_app/app/modules/my_courses/saved_course_list.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCoursesView extends StatelessWidget {
  const MyCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: AppSpacing.tenVertical),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSpacing.tenHorizontal),
                child: Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        physics: const NeverScrollableScrollPhysics(),
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(
                          left: 10,
                          right: AppSpacing.tenHorizontal,
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: AppTypography.kBold20,
                        labelColor: AppColors.kSecondary,
                        unselectedLabelColor: AppColors.kLightBrown,
                        tabs: const [
                          Tab(
                            text: 'My Courses',
                          ),
                          Tab(
                            text: 'Saved',
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      icon: AppAssets.kFilter,
                      color: AppColors.kPrimary.withOpacity(0.15),
                      onTap: () {},
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    MyCourseList(),
                    SavedCourseList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
