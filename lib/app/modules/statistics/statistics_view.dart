import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/category.dart';
import 'package:eden_learning_app/app/modules/statistics/components/active_user_chart.dart';
import 'package:eden_learning_app/app/modules/statistics/components/custom_progress_bar.dart';
import 'package:eden_learning_app/app/modules/statistics/components/filter_date_card.dart';
import 'package:eden_learning_app/app/modules/statistics/components/weekly_earning_chart.dart';
import 'package:eden_learning_app/app/modules/widgets/custom_painter/dotted_divider.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsView extends StatefulWidget {
  const StatisticsView({super.key});

  @override
  State<StatisticsView> createState() => _StatisticsViewState();
}

class _StatisticsViewState extends State<StatisticsView> {
  int selectedTime = 1;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.kWhite,
      child: Scaffold(
        backgroundColor: AppColors.kPrimary.withOpacity(0.15),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Text(
            'Statistics',
            style: AppTypography.kBold24.copyWith(color: AppColors.kSecondary),
          ),
          actions: [
            CustomIconButton(
              icon: AppAssets.kCalendar,
              onTap: () {},
            ),
            SizedBox(width: AppSpacing.twentyHorizontal),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                final filterDates = ['Days', 'Week', 'Month', 'Year'];
                return FilterDateCard(
                  onTap: () {
                    setState(() {
                      selectedTime = index;
                    });
                  },
                  text: filterDates[index],
                  isSelected: selectedTime == index,
                );
              }),
            ),
            SizedBox(height: 35.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  onTap: () {},
                  icon: AppAssets.kArrowBackIos,
                ),
                Text('Oct 2- 9, 2020 ', style: AppTypography.kBold18),
                CustomIconButton(
                  onTap: () {},
                  icon: AppAssets.kArrowBackForward,
                ),
              ],
            ),
            SizedBox(height: AppSpacing.twentyVertical),
            Container(
              padding: EdgeInsets.all(AppSpacing.twentyVertical),
              decoration: BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.circular(10.01.r),
                boxShadow: [AppColors.defaultShadow],
              ),
              child: const WeeklyEarningChart(),
            ),
            SizedBox(height: AppSpacing.thirtyVertical),
            Container(
              padding: EdgeInsets.all(12.h),
              decoration: BoxDecoration(
                color: AppColors.kPrimary.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Text(
                    'You’ve reached a new\nweekly sales record!',
                    style: AppTypography.kLight16,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '2048 Sales',
                    style: AppTypography.kBold18,
                  ),
                  SizedBox(height: 10.1.h),
                  DottedDivider(
                    color: AppColors.kGrey.withOpacity(0.05),
                  ),
                  CustomTextButton(
                    onPressed: () {},
                    text: 'Read Details',
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSpacing.thirtyVertical),
            Text('Sales per category', style: AppTypography.kBold18),
            SizedBox(height: AppSpacing.twentyVertical),
            SizedBox(
              height: 150.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    width: 135.w,
                    height: 150.h,
                    padding: EdgeInsets.all(12.h),
                    decoration: BoxDecoration(
                      color: AppColors.kPrimary,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      children: [
                        const CustomProgressBar(
                          progress: 0.5,
                          text: '528',
                        ),
                        const Spacer(),
                        Text(
                          categoriesList[index].name,
                          style: AppTypography.kLight16.copyWith(
                            color: AppColors.kWhite,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 20.w),
                itemCount: categoriesList.length,
              ),
            ),
            SizedBox(height: AppSpacing.thirtyVertical),
            Text('Active Users', style: AppTypography.kBold18),
            SizedBox(height: AppSpacing.twentyVertical),
            Container(
              height: 270.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [AppColors.defaultShadow],
              ),
              child: ActiveUserChart(),
            ),
          ]),
        ),
      ),
    );
  }
}
