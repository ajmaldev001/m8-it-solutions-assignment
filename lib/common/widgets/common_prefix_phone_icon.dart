import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class CommonPrefixInputfeildPhoneIcon extends StatelessWidget {
  const CommonPrefixInputfeildPhoneIcon(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            '+91',
            style: AppTextStyles.blackTheme16
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12.w),
          height: 46.h,
          width: 1.w,
          color: AppColors.littleDipper
        )
      ],
    );
  }
}