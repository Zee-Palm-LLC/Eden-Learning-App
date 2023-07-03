import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/data/dummy_list.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:eden_learning_app/app/modules/course_detail/components/review_card.dart';
import 'package:eden_learning_app/app/modules/home/components/custom_menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:  EdgeInsets.symmetric(horizontal:AppSpacing.twentyHorizontal),
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: AppSpacing.thirtyVertical),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              5,
              (index) => CustomMenuCard(
                icon: reviews[index],
                isSelected: false,
                onTap: () {},
                title: index == 0
                    ? '1'
                    : index == 4
                        ? '12'
                        : index == 3
                            ? '2'
                            : '-',
              ),
            ),
          ),
          SizedBox(height: 30.h),
          AuthField(
            controller: TextEditingController(),
            hintText: 'Leave a Review',
          ),
          SizedBox(height: 30..h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const ReviewCard();
            },
            separatorBuilder: (context, index) => SizedBox(height: 15.h),
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}

