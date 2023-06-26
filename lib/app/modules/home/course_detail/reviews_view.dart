import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/data/dummy_list.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:eden_learning_app/app/modules/home/components/custom_menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:AppSpacing.twentyHorizontal),
      child: Column(
        children: [
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

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [AppColors.defaultShadow],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSpacing.radiusTen),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ya Chin-Ho', style: AppTypography.kBold16),
                  Text('1d ago', style: AppTypography.kLight14),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                AppAssets.kMoreVert,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: AppSpacing.tenVertical),
          Text(
            'I strongly recommend this course to anyone interested in web design. I am so pleased with the website I’ve created from this course. 😇',
            style: AppTypography.kLight14,
          ),
        ],
      ),
    );
  }
}
