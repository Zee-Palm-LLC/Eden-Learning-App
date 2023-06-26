import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialShareCard extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final Color? iconColor;
  const SocialShareCard({
    required this.onTap,
    required this.icon,
    this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 50.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.kSecondary.withOpacity(0.1)),
        ),
        child: SvgPicture.asset(icon, color: iconColor),
      ),
    );
  }
}
