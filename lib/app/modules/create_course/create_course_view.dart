import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/create_course/components/create_lessons.dart';
import 'package:eden_learning_app/app/modules/create_course/components/publish_course_view.dart';
import 'package:eden_learning_app/app/modules/create_course/course_published.dart';
import 'package:eden_learning_app/app/modules/profile/components/profile_image_card.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateCourseView extends StatefulWidget {
  const CreateCourseView({super.key});

  @override
  State<CreateCourseView> createState() => _CreateCourseViewState();
}

class _CreateCourseViewState extends State<CreateCourseView> {
  bool _createLessons = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a new course '),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.h),
        decoration: BoxDecoration(
          color: AppColors.kPrimary.withOpacity(0.081),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.r),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(AppSpacing.twentyVertical),
              child: Row(
                children: [
                  ProfileImageCard(size: 50.h),
                  Expanded(
                    child: TextField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                        hintText: 'What does your course entail?',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSpacing.tenVertical),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 500),
              firstChild: const CreateLessons(),
              secondChild: const PublishCourseView(),
              crossFadeState: _createLessons
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: PrimaryButton(
                onTap: () {
                  if (_createLessons) {
                    setState(() {
                      _createLessons = false;
                    });
                  } else {
                    Get.to<void>(() => const CoursePublished());
                  }
                },
                text: _createLessons ? 'Continue' : 'Publish',
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
