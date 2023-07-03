import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
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
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return PrimaryContainer(
      child: TextFormField(
        controller: controller,
        enabled: isEnabled,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Search courses, names, etc.',
          prefixIcon: IconButton(
            onPressed: null,
            icon: SvgPicture.asset(
              AppAssets.kSearch,
              colorFilter: ColorFilter.mode(
                isDarkMode(context) ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
