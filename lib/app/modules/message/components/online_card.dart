import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlineCard extends StatelessWidget {
  final OnlinePeople online;
  const OnlineCard({required this.online, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 65.h,
          width: 65.w,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 60..h,
                width: 60..w,
                margin: const EdgeInsets.only(bottom: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: NetworkImage(online.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 15.h,
                width: 15.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.kSuccess,
                  border: Border.all(color: AppColors.kWhite, width: 3.w),
                ),
              ),
            ],
          ),
        ),
        Text(online.name, style: AppTypography.kLight14),
      ],
    );
  }
}
