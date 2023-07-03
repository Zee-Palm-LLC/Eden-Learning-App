import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/lessons.dart';
import 'package:eden_learning_app/app/modules/course_detail/components/lesson_card.dart';
import 'package:eden_learning_app/app/modules/widgets/animations/custom_switch.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseLessonsView extends StatefulWidget {
  final List<Lessons> lesson;
  const CourseLessonsView({required this.lesson, super.key});

  @override
  State<CourseLessonsView> createState() => _CourseLessonsViewState();
}

class _CourseLessonsViewState extends State<CourseLessonsView> {
  bool _isDownloadAll = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          PrimaryContainer(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            child: Row(
              children: [
                Text('Download All', style: AppTypography.kLight16),
                const Spacer(),
                CustomSwitch(
                  value: _isDownloadAll,
                  onChanged: (value) {
                    setState(() {
                      _isDownloadAll = value;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: AppSpacing.twentyVertical),
          ListView.separated(
            itemBuilder: (context, index) {
              return LessonCard(
                index: index,
                lesson: widget.lesson[index],
              );
            },
            separatorBuilder: (context, index) => Divider(height: 30.h),
            itemCount: widget.lesson.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}

