import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;

  const PrimaryContainer({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 1.h, right: 1.w, left: 1.0.w),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [AppColors.defaultShadow],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: child,
    );
  }
}
