import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/create_course/components/price_input_widget.dart';
import 'package:eden_learning_app/app/modules/home/components/course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublishCourseView extends StatefulWidget {
  const PublishCourseView({super.key});

  @override
  State<PublishCourseView> createState() => _PublishCourseViewState();
}

class _PublishCourseViewState extends State<PublishCourseView> {
String selectedCurrency = r'$';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Column(
        children: [
         SizedBox(
          width: double.maxFinite,
           child: CourseCard(
            course: coursesList[0],
           ),
         ),
          SizedBox(height: 23.h),
          PriceInputWidget(
            initialValue: selectedCurrency,
            onChanged: (value){
              setState(() {
                selectedCurrency = value!;
              });
            },
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
