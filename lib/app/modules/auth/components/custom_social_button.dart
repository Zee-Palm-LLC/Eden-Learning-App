import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String icon;
  final double? margin;
  const CustomSocialButton({
    required this.onTap,
    required this.text,
    required this.icon,
    this.margin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap,
      child: Container(
        height: 60.h,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: margin ?? AppSpacing.twentyHorizontal,
        ),
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          border: Border.all(color: AppColors.kLine),
          borderRadius: BorderRadius.circular(
            AppSpacing.radiusTen,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.kSecondary.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            const Spacer(),
            Text(
              text,
              style: AppTypography.kBold16,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
