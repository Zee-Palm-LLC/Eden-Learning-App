import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupStoreView extends StatefulWidget {
  final Function(String?)? onChanged;
  const SetupStoreView({super.key, this.onChanged});

  @override
  State<SetupStoreView> createState() => _SetupStoreViewState();
}

class _SetupStoreViewState extends State<SetupStoreView> {
  final TextEditingController storeName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(AppAssets.kStoreSetup),
          SizedBox(height: 90.h),
          FadeInRight(
            duration: const Duration(milliseconds: 1000),
            child: Text(
              'What should we call\nyour store?',
              style: AppTypography.kBold32,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppSpacing.tenVertical),
          FadeInRight(
            duration: const Duration(milliseconds: 1000),
            child: Text(
              'You can still change this later.',
              style: AppTypography.kLight16,
            ),
          ),
          SizedBox(height: AppSpacing.thirtyVertical),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: storeName,
              hintText: 'Store Name',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
