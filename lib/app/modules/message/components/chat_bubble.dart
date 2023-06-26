import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessage chat;
  const ChatBubble({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: chat.messageType == 'receiver'
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: chat.messageType == 'receiver'
              ? AppColors.kPrimary
              : AppColors.kPrimary.withOpacity(0.08),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          chat.messageContent,
          style: AppTypography.kLight14.copyWith(
            color: chat.messageType == 'receiver'
                ? AppColors.kWhite
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
