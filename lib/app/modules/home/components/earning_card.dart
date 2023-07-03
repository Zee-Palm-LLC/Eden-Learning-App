import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarningCard extends StatelessWidget {
  final String title;
  final String amount;
  final void Function() onSwipe;
  const EarningCard({
    required this.amount,
    required this.title,
    required this.onSwipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      padding: EdgeInsets.all(20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTypography.kLight16),
          Text(amount, style: AppTypography.kLight30),
          SizedBox(height: AppSpacing.thirtyVertical),
          CustomSwipeButton(
            onSwipe: onSwipe,
          ),
        ],
      ),
    );
  }
}
