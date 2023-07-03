import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:eden_learning_app/app/modules/message/components/chat_bubble.dart';
import 'package:eden_learning_app/app/modules/message/components/message_appbar.dart';
import 'package:eden_learning_app/app/modules/message/components/message_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConversationView extends StatelessWidget {
  final ChatModel chat;
  const ConversationView({required this.chat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      extendBody: true,
      appBar: const MessageAppBar(),
      body: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSpacing.radiusThirty),
          ),
          color: isDarkMode(context) ? Colors.black : Colors.white,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.r),
            ),
            color: AppColors.kPrimary.withOpacity(0.4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(AppSpacing.twentyVertical),
                child: Row(
                  children: [
                    Hero(
                      tag: chat.imageURL + chat.time,
                      child: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: DecorationImage(
                            image: NetworkImage(chat.imageURL),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(chat.name, style: AppTypography.kBold16),
                        SizedBox(height: 6.h),
                        Text('Active Now', style: AppTypography.kLight14),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppAssets.kMoreVert, color: Colors.black),
                  ],
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: isDarkMode(context) ? Colors.black : Colors.white,
                  child: ListView.separated(
                    padding: EdgeInsets.all(AppSpacing.twentyVertical),
                    itemBuilder: (context, index) {
                      return ChatBubble(
                        chat: messages[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 10.h),
                    itemCount: messages.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const MessageField(),
    );
  }
}
