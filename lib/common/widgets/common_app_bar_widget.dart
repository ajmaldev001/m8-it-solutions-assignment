import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final void Function()? onLeadingPressed;
  final Color backgroundColor;
  final TextStyle? titleStyle;
  final Icon leadingIcon;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onLeadingPressed,
    this.backgroundColor = AppColors.primaryColor,
    this.titleStyle,
    this.leadingIcon = const Icon(Icons.arrow_back_ios),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: IconButton(
          onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
          icon: leadingIcon,
        ),
      ),
      title: Text(
        title,
        style: AppTextStyles.blackTheme18.copyWith(
          color: AppColors.creameViolet,
          height: (21.6 / 14).sp,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
