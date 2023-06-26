import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:eden_learning_app/app/modules/auth/components/custom_social_button.dart';
import 'package:eden_learning_app/app/modules/auth/components/divider_with_text.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Center(
                child: Text(
                  'Welcome Back',
                  style: AppTypography.kBold32,
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  'Sign in to unlock exclusive features and personalized content',
                  style: AppTypography.kLight16,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.h),
              AuthField(
                controller: _emailController,
                hintText: 'Enter Email',
                onChanged: (value) {},
              ),
              SizedBox(height: AppSpacing.thirtyVertical),
              AuthField(
                controller: _passwordController,
                hintText: 'Enter Password',
                onChanged: (value) {},
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  onPressed: () {},
                  text: 'Forget Password?',
                ),
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              PrimaryButton(
                onTap: () {
                  Get.offAllNamed<dynamic>(AppRoutes.getLandingPageRoute());
                },
                text: 'Login',
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              const DividerWithText(),
              SizedBox(height: AppSpacing.twentyVertical),
              CustomSocialButton(
                onTap: () {},
                icon: AppAssets.kFaceBook,
                text: 'Join using Facebook',
                margin: 0,
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              CustomSocialButton(
                onTap: () {},
                icon: AppAssets.kGoogle,
                text: 'Join using Google',
                margin: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
