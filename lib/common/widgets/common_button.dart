import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.color = AppColors.primaryDarkBlue,
      this.showTransparentBackground = false});
  final String text;
  final VoidCallback onTap;
  final Color color;
  final bool showTransparentBackground;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32.r)
        ),
        child: Center(
            child: Text(
          text,
          style: AppTextStyles.whiteTheme16,
        )),
      ),
    );
  }
}