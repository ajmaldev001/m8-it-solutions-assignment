import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';
import 'package:m8_it_solutions_assignment/common/routes/names.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_app_bar_widget.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_button.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_heading_text_widget.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_input_feild.dart';
import 'package:m8_it_solutions_assignment/common/widgets/common_prefix_phone_icon.dart';
import 'package:m8_it_solutions_assignment/features/register/widgets/privacy_policy_widget.dart';
import 'package:m8_it_solutions_assignment/features/register/widgets/social_icons_widget.dart';
import '../../common/widgets/common_text_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Register'),
      body: Column(
        children: [
         Expanded(
           child: SingleChildScrollView(
             child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 41.h),
                  const CommonHeadingText(
                    title2: 'Register',
                  ),
                  SizedBox(height: 30.h),
                  CommonInputField(
                    hintText: 'Name', 
                    controller: _nameController, 
                    onChanged: (val){}, 
                    errorText: ''
                  ),
                  SizedBox(height: 20.h),
                  CommonInputField(
                    hintText: 'Email Address', 
                    controller: _emailAddressController, 
                    onChanged: (val){}, 
                    errorText: ''
                  ),
                  SizedBox(height: 20.h),
                  CommonInputField(
                    hintText: 'Password', 
                    controller: _passwordController, 
                    onChanged: (val){}, 
                    errorText: ''
                  ),
                  SizedBox(height: 20.h),
                  CommonInputField(
                    hintText: 'Confirm Password', 
                    controller: _confirmPasswordController, 
                    onChanged: (val){}, 
                    errorText: ''
                  ),
                  SizedBox(height: 20.h),
                  CommonInputField(
                    hintText: 'Mobile Number', 
                    controller: _numberController,
                    textInputType: TextInputType.phone,
                    prefixIcon: const CommonPrefixInputfeildPhoneIcon(),
                    onChanged: (val){}, 
                    errorText: ''
                  ),
                  SizedBox(height: 20.h),
                  const PrivacyPolicy(),
                  SizedBox(height: 40.h),
                  CommonButton(
                    text: 'Register', 
                    onTap: (){}
                  ),
                  SizedBox(height: 20.h),
                  _buildRegisterDivider(context),
                  SizedBox(height: 20.h),
                  const SocialIcons(),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: AppTextStyles.blackTheme14.copyWith(
                          color: AppColors.twilightGray
                        ),
                      ),
                      SizedBox(width: 2.w),
                      CommonTextButton(
                        text: 'Login',
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.Login);
                        },
                      ),
                    ],
                  )
                ],
               ),
             ),
           ),
         )
        ],
      )
    );
  }
  Widget _buildRegisterDivider(BuildContext context){
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.littleDipper)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child:  Text(
            'or registered with',
            style: AppTextStyles.blackTheme14.copyWith(
              color: AppColors.twilightGray
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.littleDipper)),
      ],
    );
  }
}