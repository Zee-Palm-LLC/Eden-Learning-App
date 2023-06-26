import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final double? fontSize;
  const CustomTextButton({
    required this.onPressed,
    required this.text,
    this.fontSize,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTypography.kBold14.copyWith(
          color: color ?? AppColors.kPrimary,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
