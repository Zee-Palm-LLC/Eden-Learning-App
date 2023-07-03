import 'package:eden_learning_app/app/controllers/theme_controller.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/profile/components/setting_tile.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isNotification = true;
  bool isDownloadAll = true;
  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.h),
          child: CustomIconButton(
            color: isDarkMode(context)
                ? Colors.black
                : AppColors.kPrimary.withOpacity(0.14),
            icon: AppAssets.kArrowBackIos,
            onTap: () {
              Get.back<void>();
            },
          ),
        ),
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
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
              switchValue: isNotification,
              onChanged: (value) {
                setState(() {
                  isNotification = value;
                });
              },
            ),
            const Divider(),
            GetBuilder<ThemeController>(
              init: ThemeController(),
              initState: (_) {},
              builder: (_) {
                final isLightMode = _.theme == 'light';
                return SettingTile(
                  icon: AppAssets.kTheme,
                  isSwitch: true,
                  title: 'Light Mode',
                  switchValue: isLightMode,
                  onChanged: (value) {
                    if (isLightMode) {
                      _.setTheme('dark');
                    } else {
                      _.setTheme('light');
                    }
                  },
                );
              },
            ),
            const Divider(),
            SettingTile(
              icon: AppAssets.kDownload,
              isSwitch: true,
              title: 'Download courses',
              switchValue: isDownloadAll,
              onChanged: (value) {
                setState(() {
                  isDownloadAll = value;
                });
              },
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
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
