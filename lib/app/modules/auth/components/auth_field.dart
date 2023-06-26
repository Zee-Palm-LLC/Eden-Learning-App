import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String hintText;
  const AuthField({
    required this.controller,
    required this.hintText,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.kPrimary.withOpacity(0.2),
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(
          AppSpacing.radiusTen,
        ),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
