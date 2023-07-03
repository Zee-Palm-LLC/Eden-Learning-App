import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.twentyVertical),
      decoration: BoxDecoration(
        color: AppColors.kPrimary.withOpacity(0.41),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSpacing.radiusThirty),
        ),
      ),
      child: PrimaryContainer(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Type a Message',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            ),
          ),
        ),
      ),
    );
  }
}
