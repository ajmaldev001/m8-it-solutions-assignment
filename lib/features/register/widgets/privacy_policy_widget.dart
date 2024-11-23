import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24.h,
          width: 24.w,
          margin: EdgeInsets.only(right: 12.w),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.littleDipper,
              width: 1.w
            )
          ),
          child: Center(
            child: Icon(
              Icons.check,
              size: 14.sp,
              color: AppColors.green,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "By creating an account, I agree to the ", 
                style: AppTextStyles.blackTheme14.copyWith(
                  height: (16.8/14).sp
                ),
              ),
              TextSpan(
                text: "privacy & policy", 
                style: AppTextStyles.blackTheme14.copyWith(
                  color: AppColors.primaryDarkBlue,
                  height: (16.8/14).sp
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}