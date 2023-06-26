import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/chat_model.dart';
import 'package:eden_learning_app/app/modules/home/components/search_field.dart';
import 'package:eden_learning_app/app/modules/message/components/chat_card.dart';
import 'package:eden_learning_app/app/modules/message/components/online_card.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: Scaffold(
        backgroundColor: Colors.brown.withOpacity(0.5),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: customOverlay,
          leading: Padding(
            padding: EdgeInsets.all(7.h),
            child: CustomIconButton(
              onTap: () {
                Get.back<void>();
              },
              color: AppColors.kWhite.withOpacity(0.4),
              icon: AppAssets.kArrowBackIos,
            ),
          ),
          centerTitle: true,
          title: Text('Messages', style: AppTypography.kBold24),
          actions: [
            CustomIconButton(
              onTap: () {},
              icon: AppAssets.kAdd,
              color: AppColors.kWhite.withOpacity(0.40),
            ),
            SizedBox(width: 20.w),
          ],
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSpacing.radiusThirty),
            ),
            color: Colors.white,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30.r),
              ),
              color: AppColors.kPrimary.withOpacity(0.4),
            ),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.h),
                    child: SearchField(
                      controller: _searchController,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20..h),
                    child: Text('10 are online', style: AppTypography.kBold18),
                  ),
                  SizedBox(
                    height: 85.h,
                    child: ListView.separated(
                      padding:
                          EdgeInsets.only(left: AppSpacing.twentyHorizontal),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return OnlineCard(
                          online: onlinePeople[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 15.w),
                      itemCount: onlinePeople.length,
                    ),
                  ),
                  SizedBox(
                    height: AppSpacing.thirtyVertical,
                  ),
                  ColoredBox(
                    color: Colors.white,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 8,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(AppSpacing.twentyHorizontal),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 30.h),
                      itemBuilder: (content, index) {
                        return ChatCard(
                          chat: chatList[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
