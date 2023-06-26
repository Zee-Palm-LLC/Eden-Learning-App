import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/activity/activity_view.dart';
import 'package:eden_learning_app/app/modules/create_course/create_course_view.dart';
import 'package:eden_learning_app/app/modules/home/home_view.dart';
import 'package:eden_learning_app/app/modules/my_courses/my_courses_view.dart';
import 'package:eden_learning_app/app/modules/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<Widget> _pages = [
    const HomeView(),
    const MyCoursesView(),
   const CreateCourseView(),
    const ActivityView(),
    const ProfileView(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 80.h,
        padding: EdgeInsets.only(top: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSpacing.radiusForty),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.kPrimary.withOpacity(0.2),
              blurRadius: 7,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSpacing.radiusForty),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.kHome),
                label: 'Home',
                activeIcon: SvgPicture.asset(
                  AppAssets.kHome,
                  colorFilter: const ColorFilter.mode(
                    AppColors.kSecondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.kBookOpen),
                label: 'my Courses',
                activeIcon: SvgPicture.asset(AppAssets.kBookOpenFilled),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                    color: AppColors.kPrimary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.kWhite,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.kActivity),
                label: 'Activity',
                activeIcon: SvgPicture.asset(AppAssets.kActivityFilled),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.kUser),
                label: 'Profile',
                activeIcon: SvgPicture.asset(AppAssets.kUserFilled),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
