import 'package:eden_learning_app/app/controllers/saved_controller.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/my_courses/components/empty_card.dart';
import 'package:eden_learning_app/app/modules/my_courses/components/my_course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SavedCourseList extends StatelessWidget {
  
  const SavedCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    final sc = Get.put(SavedController());
    return Obx(() => sc.saveCourses != null && sc.saveCourses!.isNotEmpty
        ? GridView.builder(
            itemCount: sc.saveCourses!.length,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 150 / 215,
              crossAxisSpacing: AppSpacing.twentyHorizontal,
              mainAxisSpacing: AppSpacing.twentyVertical,
            ),
            itemBuilder: (context, index) {
              return MyCourseCard(
                course: sc.saveCourses![index],
              );
            },
          )
        : const EmptyCard());
  }
}
