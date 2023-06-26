import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/data/dummy_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Students', style: AppTypography.kBold18),
          SizedBox(height: AppSpacing.twentyVertical),
          CustomStackImage(images: userImages),
          SizedBox(height: 38.h),
          DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [AppColors.defaultShadow],
            ),
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
          SizedBox(height: 25.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [AppColors.defaultShadow],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.h),
                      child: Row(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppSpacing.radiusTen),
                              image: DecorationImage(
                                image: NetworkImage(userImages[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('HaTin-Yu Chin',
                                  style: AppTypography.kBold16),
                              Text('4d ago', style: AppTypography.kLight14),
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            AppAssets.kMoreVert,
                            color: AppColors.kSecondary,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12..h),
                      child: Text(
                        'Comments are appreciated',
                        style: AppTypography.kLight14,
                      ),
                    ),
                    Image.network(
                      'https://generatestatus.com/wp-content/uploads/2020/01/Fake-Instagram-Post-Generator.jpg',
                      fit: BoxFit.cover,
                      height: 200.h,
                      width: double.maxFinite,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12..h),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppAssets.kThumbUp),
                          SizedBox(width: 5.w),
                          Text('7k', style: AppTypography.kBold14),
                          SizedBox(width: 10.w),
                          SvgPicture.asset(AppAssets.kComment),
                          SizedBox(width: 5..w),
                          Text('89', style: AppTypography.kBold14),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemCount: 1,
          ),
        ],
      ),
    );
  }
}

class CustomStackImage extends StatelessWidget {
  final List<String> images;
  const CustomStackImage({required this.images, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: Stack(
        children: [
          ...List.generate(
            images.length > 4 ? 4 : images.length,
            (index) => Positioned(
              left: (index * (25.w + 20.w)).toDouble(),
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          if (images.length > 4)
            Positioned(
              left: (4 * (25.w + 20.w)).toDouble(),
              child: Container(
                height: 50.h,
                width: 50.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.kPrimary,
                ),
                child: Text(
                  '+${images.length - 4}',
                  style:
                      AppTypography.kBold20.copyWith(color: AppColors.kWhite),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
