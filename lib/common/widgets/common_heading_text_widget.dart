import 'package:flutter/material.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class CommonHeadingText extends StatelessWidget {
  const CommonHeadingText({
    super.key, 
    this.title1 = 'Lets Start With \n',
    required this.title2
  });
  final String title1;
  final String title2;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title1,
              style: AppTextStyles.headingBold36 
            ),
            TextSpan(
              text: title2,
              style: AppTextStyles.headingBold36.copyWith(
                color: AppColors.primaryDarkBlue
              )
            ),
          ],
        ),
      );
  }
}
