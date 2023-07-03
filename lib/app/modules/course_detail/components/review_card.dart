import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/profile/components/profile_image_card.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      padding: EdgeInsets.all(18.h),
      child: Column(
        children: [
          Row(
            children: [
              ProfileImageCard(
                size: 50.h,
                image:
                    'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
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
