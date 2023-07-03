import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceInputWidget extends StatelessWidget {
  final String initialValue;
  final void Function(String?)? onChanged;

  const PriceInputWidget({
    required this.initialValue,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: DropdownButton<String>(
              value: initialValue,
              underline: const SizedBox(),
              onChanged: onChanged,
              items: <String>[
                r'$',
                'Rs',
                'Inr',
                'Yuan',
              ].map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            width: 1,
            height: 40.h,
            color: Colors.grey.withOpacity(0.5),
          ),
          const Expanded(
            flex: 8,
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter Price'),
            ),
          ),
        ],
      ),
    );
  }
}
