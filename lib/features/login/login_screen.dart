import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_strings.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';
import 'package:m8_it_solutions_assignment/common/routes/names.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_app_bar_widget.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_button.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_heading_text_widget.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_input_feild.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_text_button.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.register,
        onLeadingPressed: () {
          
        },
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
             const CommonHeadingText(
                title2: AppStrings.register,
              ),
              SizedBox(height: 40.h),
              CommonInputField(
                hintText: AppStrings.emailAddress, 
                controller: _emailAddressController, 
                onChanged: (val){}, 
                errorText: ''
              ),
              SizedBox(height: 20.h),
              CommonInputField(
                hintText: AppStrings.password, 
                controller: _passwordController, 
                onChanged: (val){}, 
                errorText: ''
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerRight,
                child: CommonTextButton(
                  text: AppStrings.forgotPassword,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 40.h),
              CommonButton(
                text: AppStrings.login, 
                onTap: () => Navigator.pushNamed(context, AppRoutes.UserProfile)
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.dontHaveAcc,
                    style: AppTextStyles.blackTheme14.copyWith(
                      color: AppColors.twilightGray
                    ),
                  ),
                  SizedBox(width: 2.w),
                  CommonTextButton(
                    text: AppStrings.register,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.Register);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}