import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback leadingCallback;
  const CustomBackAppBar({
    required this.leadingCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 70.w,
      systemOverlayStyle: customOverlay,
      leading: Padding(
        padding: EdgeInsets.all(7.h),
        child: CustomIconButton(
          onTap: leadingCallback,
          icon: AppAssets.kArrowBackIos,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
