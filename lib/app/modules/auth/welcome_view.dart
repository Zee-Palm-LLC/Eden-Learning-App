import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/custom_social_button.dart';
import 'package:eden_learning_app/app/modules/auth/components/divider_with_text.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: Column(
        children: [
          const WaveCard(),
          const Spacer(),
          Text(
            'Join a community of teachers & students',
            style: AppTypography.kBold32,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          CustomSocialButton(
            onTap: () {},
            icon: AppAssets.kFaceBook,
            text: 'Join using Facebook',
          ),
          SizedBox(height: AppSpacing.twentyVertical),
          CustomSocialButton(
            onTap: () {},
            icon: AppAssets.kGoogle,
            text: 'Join using Google',
          ),
          SizedBox(height: AppSpacing.thirtyVertical),
          const DividerWithText(),
          SizedBox(height: AppSpacing.thirtyVertical),
          CustomSocialButton(
            onTap: () {
              Get.toNamed<dynamic>(AppRoutes.getSignUpRoute());
            },
            icon: AppAssets.kMail,
            text: 'Join using Email',
          ),
          SizedBox(height: AppSpacing.tenVertical),
          CustomTextButton(
            onPressed: () {
              Get.toNamed<dynamic>(AppRoutes.getSignInRoute());
            },
            text: 'Sign In instead',
          ),
          SizedBox(height: AppSpacing.twentyVertical),
        ],
      ),
    );
  }
}
