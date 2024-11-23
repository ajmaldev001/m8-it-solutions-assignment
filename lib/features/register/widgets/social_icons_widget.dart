import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_constants.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: AppConstants.groupedSocialIcons.map((image) {
          return Container(
            width: 44.w,
            height: 44.h,
            padding: const EdgeInsets.all(8),
            margin:  EdgeInsets.symmetric(horizontal: 10.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.littleDipper,
                width: 1.w
              ),
              // color: AppColors.littleDipper,
              ),
              child: SvgPicture.asset(image),
            );
        }).toList(),
    );
  }
}