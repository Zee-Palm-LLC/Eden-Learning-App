import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTypeCard extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isSelected;
  const UserTypeCard({
    required this.onTap,
    required this.isSelected,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedButton(
        onTap: onTap,
        child: Container(
          width: 160.w,
          height: 270.h,
          padding: EdgeInsets.all(12.h),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: isSelected ? AppColors.kPrimary : AppColors.kWhite,
            boxShadow: [
              BoxShadow(
                color: AppColors.kPrimary.withOpacity(0.2),
                blurRadius: 7,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Text(
            text,
            style: AppTypography.kBold16.copyWith(
              color: isSelected ? AppColors.kWhite : AppColors.kSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
