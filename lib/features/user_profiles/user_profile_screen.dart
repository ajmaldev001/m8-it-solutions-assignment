import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_image_res.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';
import 'package:m8_it_solutions_assignment/common/routes/names.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.h), 
        child: Container(
         padding: EdgeInsets.symmetric(horizontal: 20.w),
         decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
           color: AppColors.primaryDarkBlue,
         ),
         child: Row(
          children: [
             Expanded(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoutes.Login,
                              (route) => false,
                            ),
                            child: Container(
                              height: 40.h,
                              width: 40.h,
                              decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.12),
                                borderRadius: BorderRadius.circular(8.r)
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,size: 14.sp,
                                  color: AppColors.white,
                                )
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Text(
                            'Login',
                            style: AppTextStyles.blackTheme18.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 40.h,
                        width: 40.h,
                        padding: EdgeInsets.all(10.sp),
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(8.r)
                        ),
                        child: SvgPicture.asset(AppImageRes.svgBellIcon),
                      )
                    ],
                  ),
                ],
               ),
             )
            ]
          ),
        ),
       ),
      body: const Column(
        children: [
          /* Body Items of profile screen need to be filled */
        ],
      ),
    );
  }
}