import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingTile extends StatefulWidget {
  final String title;
  final String? subtitle;
  final String icon;
  final bool isSwitch;
  final VoidCallback? onTap;
  const SettingTile({
    required this.title,
    required this.icon,
    this.subtitle,
    this.onTap,
    this.isSwitch = false,
    super.key,
  });

  @override
  State<SettingTile> createState() => _SettingTileState();
}

class _SettingTileState extends State<SettingTile> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      leading: SvgPicture.asset(widget.icon),
      title: Text(widget.title, style: AppTypography.kBold16),
      subtitle: widget.isSwitch
          ? null
          : widget.subtitle != null
              ? Text(widget.subtitle!, style: AppTypography.kLight14)
              : null,
      trailing: widget.isSwitch
          ? CupertinoSwitch(
              value: isOn,
              activeColor: AppColors.kPrimary,
              onChanged: (value) {
                setState(() {
                  isOn = !isOn;
                });
              },
            )
          : SvgPicture.asset(
              AppAssets.kArrowBackForward,
              color: AppColors.kSecondary.withOpacity(0.4),
            ),
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
    );
  }
}
