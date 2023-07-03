import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/course_detail/components/course_body_info.dart';
import 'package:eden_learning_app/app/modules/course_detail/course_lessons_view.dart';
import 'package:eden_learning_app/app/modules/course_detail/project_view.dart';
import 'package:eden_learning_app/app/modules/course_detail/reviews_view.dart';
import 'package:eden_learning_app/app/modules/home/components/flexible_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseDetailView extends StatelessWidget {
  final Course course;
  const CourseDetailView({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            FlexibleHeader(course: course),
            SliverToBoxAdapter(
              child: CourseBodyInfo(
                course: course,
              ),
            ),
            SliverPersistentHeader(
              delegate: _TabBarHeaderDelegate(
                tabBar: TabBar(
                  physics: const NeverScrollableScrollPhysics(),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.only(top: 20.h),
                  labelStyle: AppTypography.kBold20,
                  labelColor: AppColors.kSecondary,
                  unselectedLabelStyle: AppTypography.kBold18,
                  unselectedLabelColor: AppColors.kSecondary.withOpacity(0.8),
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
              ),
              pinned: true,
            ),
            SliverFillRemaining(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
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
    );
  }
}

class _TabBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;
  _TabBarHeaderDelegate({required this.tabBar});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_TabBarHeaderDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
