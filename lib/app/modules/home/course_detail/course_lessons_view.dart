import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/lessons.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(7.h),
            decoration: BoxDecoration(
              color: AppColors.kWhite,
              boxShadow: [AppColors.defaultShadow],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                Text('Download All', style: AppTypography.kLight16),
                const Spacer(),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: _isDownloadAll,
                    onChanged: (value) {
                      setState(() {
                        _isDownloadAll = !_isDownloadAll;
                      });
                    },
                  ),
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

class LessonCard extends StatelessWidget {
  final Lessons lesson;
  final int index;
  const LessonCard({required this.index, required this.lesson, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: lesson.isPaid
                ? Colors.grey.withOpacity(0.3)
                : AppColors.kPrimary,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(
            lesson.isPaid ? Icons.lock_clock_outlined : Icons.play_arrow,
            color: AppColors.kWhite,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lesson.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.kBold16,
              ),
              SizedBox(height: 5.h),
              Text(
                'Lesson ${index + 1}  •  ${lesson.duration}',
                style: AppTypography.kLight14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
