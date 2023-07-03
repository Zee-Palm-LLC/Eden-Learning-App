import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/category.dart';
import 'package:eden_learning_app/app/models/course.dart';
import 'package:eden_learning_app/app/modules/auth/components/custom_chips.dart';
import 'package:eden_learning_app/app/modules/home/components/course_card.dart';
import 'package:eden_learning_app/app/modules/home/components/search_field.dart';
import 'package:eden_learning_app/app/modules/search/components/filter_sheet.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: CustomBackAppBar(
        leadingCallback: () {
          Get.back<void>();
        },
        iconColor: isDarkMode(context)
            ? Colors.black
            : AppColors.kPrimary.withOpacity(0.15),
        title: Text(
          'Search',
          style: AppTypography.kBold20.copyWith(color: AppColors.kSecondary),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: SearchField(
                      controller: TextEditingController(),
                      isEnabled: true,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  CustomIconButton(
                    size: 50.h,
                    color: isDarkMode(context)
                        ? Colors.black
                        : AppColors.kPrimary.withOpacity(0.151),
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        builder: (context) {
                          return const FilterSheet();
                        },
                      );
                    },
                    icon: AppAssets.kFilter,
                  ),
                ],
              ),
              SizedBox(height: 60.h),
              Row(
                children: [
                  Text('Popular Categories', style: AppTypography.kBold18),
                  const Spacer(),
                  CustomTextButton(
                    onPressed: () {},
                    text: 'See All',
                    color: AppColors.kSecondary.withOpacity(0.3),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.tenVertical),
              Wrap(
                spacing: 15.w,
                runSpacing: 20.h,
                alignment: WrapAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => CustomChips(
                    onTap: () {},
                    index: index,
                    category: categoriesList[index],
                    isSelected: false,
                  ),
                ),
              ),
              SizedBox(height: 47.h),
              Row(
                children: [
                  Text('Courses', style: AppTypography.kBold18),
                  const Spacer(),
                  CustomTextButton(
                    onPressed: () {},
                    text: 'See All',
                    color: AppColors.kSecondary.withOpacity(0.29),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.tenVertical),
              SizedBox(
                height: 280.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return CourseCard(
                      course: coursesList[index],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 30.w),
                  itemCount: coursesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
