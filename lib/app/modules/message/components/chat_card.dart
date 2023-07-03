import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:eden_learning_app/app/modules/message/conversation_view.dart';
import 'package:eden_learning_app/app/modules/profile/components/profile_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatCard extends StatelessWidget {
  final ChatModel chat;
  const ChatCard({required this.chat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to<Widget>(() => ConversationView(
              chat: chat,
            ));
      },
      child: Row(
        children: [
          Hero(
            tag: chat.imageURL + chat.time,
            child: ProfileImageCard(
              size: 50.h,
              image: chat.imageURL,
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.name,
                  style: AppTypography.kBold16,
                ),
                Text(
                  '${chat.time} • ${chat.messagename}',
                  style: AppTypography.kLight14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
