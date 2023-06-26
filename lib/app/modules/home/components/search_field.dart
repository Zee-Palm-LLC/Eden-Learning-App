import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;

  final bool isEnabled;
  const SearchField({
    required this.controller,
    this.onChanged,
    this.isEnabled = false,
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
        enabled: isEnabled,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Search courses, names, etc.',
          prefixIcon: IconButton(
            onPressed: null,
            icon: SvgPicture.asset(AppAssets.kSearch),
          ),
        ),
      ),
    );
  }
}
