import 'package:flutter/material.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class CommonTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const CommonTextButton({
    super.key,
    this.onPressed,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          text: text,
          style: AppTextStyles.blackTheme14.copyWith(
            color: AppColors.primaryDarkBlue,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.primaryDarkBlue,
            decorationThickness: 1.5,
          ),
        ),
      ),
    );
  }
}