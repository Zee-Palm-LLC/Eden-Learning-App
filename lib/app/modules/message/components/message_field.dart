import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.twentyVertical),
      decoration: BoxDecoration(
        color: AppColors.kPrimary.withOpacity(0.41),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSpacing.radiusThirty),
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [AppColors.defaultShadow],
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Type a Message',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            ),
          ),
        ),
      ),
    );
  }
}
