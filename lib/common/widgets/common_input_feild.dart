import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/configs/themes/app_text_styles.dart';

class CommonInputField extends StatefulWidget {
  final Key? textFieldKey;
  final String hintText;
  final bool isPasswordField;
  final TextEditingController controller;
  final void Function(String) onChanged;
  final void Function()? onSuffixIconTapped;
  final bool isSuffixIconVisible;
  final bool isPasswordOnOff;
  final String Function(String?)? onValidator;
  final String errorText;
  final int? maxLength;
  final bool searchIconIsVisible;
  final double? height;
  final int? maxLines;
  final int? inputFormattersCount;
  final bool? expands;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType textInputType;

  const CommonInputField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isPasswordField = false,
      this.textFieldKey,
      this.textInputType = TextInputType.text,
      required this.onChanged,
      this.onValidator,
      required this.errorText,
      this.maxLength,
      this.onSuffixIconTapped,
      this.isSuffixIconVisible = false,
      this.isPasswordOnOff = false,
      this.searchIconIsVisible = false,
      this.height,
      this.expands = false,
      this.maxLines,
      this.inputFormattersCount = 0,
      this.prefixIcon,
      this.suffixIcon});

  @override
  State<CommonInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CommonInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        cursorHeight: 20.sp,
        cursorColor: AppColors.mildGrey,
        key: widget.textFieldKey,
        style: AppTextStyles.blackTheme16,
        enableInteractiveSelection: false,
        inputFormatters: [
          LengthLimitingTextInputFormatter(widget.inputFormattersCount == 0
              ? null
              : widget.inputFormattersCount)
        ],
        obscureText: widget.isSuffixIconVisible
            ? !widget.isPasswordField
            : widget.isPasswordField,
        obscuringCharacter: '*',
        controller: widget.controller,
        keyboardType: widget.textInputType,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
          fillColor: AppColors.ghostWhite,
          filled: true,
          // prefixIconColor: AppColors.gray,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.littleDipper,
              width: 1.w
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          border:  OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.littleDipper,
              width: 1.w
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.littleDipper,
              width: 1.w
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          // hintStyle: AppTextStyles.blackTheme16,
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: AppColors.littleDipper,
          //     width: 1.w
          //   ),
          //   borderRadius: BorderRadius.circular(4.r),
          // ),
          errorStyle: TextStyle(fontSize: 12.sp),
          // errorBorder: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: AppColors.littleDipper,
          //     width: 1.w
          //   ),
          //   borderRadius: BorderRadius.circular(4.r),
          // ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
            // fillColor: AppColors.ghostWhite,
            // border: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: AppColors.grey
            //   ),
            //   borderRadius: BorderRadius.circular(10.w),
            // ),
            // errorText: widget.errorText.isNotEmpty ? widget.errorText : null,
        ),
        validator: widget.onValidator,
        onChanged: widget.onChanged,
      ),
    );
  }
}
