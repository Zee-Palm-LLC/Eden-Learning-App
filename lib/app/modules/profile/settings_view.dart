import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/profile/components/setting_tile.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: Scaffold(
        backgroundColor: AppColors.kPrimary.withOpacity(0.15),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.all(8.h),
            child: CustomIconButton(
              color: AppColors.kPrimary.withOpacity(0.14),
              icon: AppAssets.kArrowBackIos,
              onTap: () {
                Get.back<void>();
              },
            ),
          ),
          centerTitle: true,
          title: Text(
            'Settings',
            style: AppTypography.kBold24.copyWith(color: AppColors.kSecondary),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.r),
            ),
          ),
          child: Column(
            children: [
              SettingTile(
                icon: AppAssets.kProfile,
                title: 'Name',
                subtitle: 'Emmy Elsner',
                onTap: () {},
              ),
              const Divider(height: 0.5),
              SettingTile(
                icon: AppAssets.kEmail,
                title: 'Email',
                subtitle: 'e****@gmail.com',
                onTap: () {},
              ),
              const Divider(height: 0.5),
              SettingTile(
                icon: AppAssets.kPassword,
                title: 'Password',
                subtitle: 'Last changed 3 months ago',
                onTap: () {},
              ),
              const Divider(),
              SettingTile(
                icon: AppAssets.kNotifications,
                isSwitch: true,
                title: 'Notifications',
              ),
              const Divider(),
              SettingTile(
                icon: AppAssets.kTheme,
                isSwitch: true,
                title: 'Light Mode',
              ),
              const Divider(),
              SettingTile(
                icon: AppAssets.kDownload,
                isSwitch: true,
                title: 'Download courses',
              ),
              const Divider(),
              SettingTile(
                icon: AppAssets.kHelp,
                title: 'Help & Feedback',
                onTap: () {},
              ),
              const Divider(),
              SettingTile(
                icon: AppAssets.kPrivacy,
                title: 'Privacy',
                onTap: () {},
              ),
              const Spacer(),
              PrimaryButton(onTap: () {}, text: 'Sign Out'),
            ],
          ),
        ),
      ),
    );
  }
}
