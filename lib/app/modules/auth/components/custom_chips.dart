import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/category.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChips extends StatelessWidget {
  final Category category;
  final int index;
  final VoidCallback onTap;
  final bool isSelected;
  const CustomChips({
    required this.isSelected,
    required this.category,
    required this.index,
    required this.onTap,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: const Duration(milliseconds: 500) *index,
      child: AnimatedButton(
        onTap: onTap,
        child: Container(
          height: 55.h,
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.kPrimary : AppColors.kWhite,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kPrimary.withOpacity(0.2),
                blurRadius: 7,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(category.image),
              SizedBox(
                width: index == 0
                    ? 37.w
                    : index == 2
                        ? 20.w
                        : 27.w,
              ),
              Text(
                category.name,
                style: AppTypography.kBold16.copyWith(
                  color: isSelected
                      ? AppColors.kWhite
                      : AppColors.kSecondary,
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
        ),
      ),
    );
  }
}
