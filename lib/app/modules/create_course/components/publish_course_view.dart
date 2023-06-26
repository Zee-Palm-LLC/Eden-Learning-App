import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/create_course/components/price_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublishCourseView extends StatefulWidget {
  const PublishCourseView({super.key});

  @override
  State<PublishCourseView> createState() => _PublishCourseViewState();
}

class _PublishCourseViewState extends State<PublishCourseView> {
String selectedCurrency = r'$';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 280.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [AppColors.defaultShadow],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: AppColors.kAccent3,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(AppSpacing.radiusFifteen),
                        ),
                      ),
                      child: Container(
                        height: 43.h,
                        width: 43.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: SvgPicture.asset(AppAssets.kBookMark),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: EdgeInsets.all(AppSpacing.tenVertical),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Design',
                            style: AppTypography.kBold14
                                .copyWith(color: AppColors.kPrimary),
                          ),
                          SizedBox(height: AppSpacing.tenVertical),
                          Text(
                            'Designing your first\nwebsite in Sketch',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTypography.kBold20,
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                '\$ ${15}',
                                style: AppTypography.kBold14,
                              ),
                              const Spacer(),
                              Text(
                                'By Emmy El..',
                                style: AppTypography.kLight16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 23.h),
          PriceInputWidget(
            initialValue: selectedCurrency,
            onChanged: (value){
              setState(() {
                selectedCurrency = value!;
              });
            },
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
