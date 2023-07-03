import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/data/dummy_list.dart';
import 'package:eden_learning_app/app/modules/course_detail/components/custom_stack_images.dart';
import 'package:eden_learning_app/app/modules/course_detail/components/projects_card.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSpacing.thirtyVertical),
          Text('Students', style: AppTypography.kBold18),
          SizedBox(height: AppSpacing.twentyVertical),
          CustomStackImages(images: userImages),
          SizedBox(height: 38.h),
          PrimaryContainer(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Type a Message',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt),
                ),
              ),
            ),
          ),
          SizedBox(height: 25.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const ProjectsCard();
            },
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemCount: 1,
          ),
        ],
      ),
    );
  }
}

