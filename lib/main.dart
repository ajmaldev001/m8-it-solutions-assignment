import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:m8_it_solutions_assignment/common/configs/app/app_colors.dart';
import 'package:m8_it_solutions_assignment/common/routes/names.dart';
import 'package:m8_it_solutions_assignment/common/routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(434, 964),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.primaryColor,
        //   inputDecorationTheme: InputDecorationTheme(
        //   contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
        //   fillColor: AppColors.ghostWhite,
        //   filled: true,
        //   // prefixIconColor: AppColors.gray,
        //   focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(
        //       color: AppColors.littleDipper,
        //       width: 1.w
        //     ),
        //     borderRadius: BorderRadius.circular(4.r),
        //   ),
        //   // hintStyle: AppTextStyles.blackTheme16,
        //   border: OutlineInputBorder(
        //     borderSide: BorderSide(
        //       color: AppColors.littleDipper,
        //       width: 1.w
        //     ),
        //     borderRadius: BorderRadius.circular(4.r),
        //   ),
        //   errorStyle: TextStyle(fontSize: 12.sp),
        //   errorBorder: OutlineInputBorder(
        //     borderSide: BorderSide(
        //       color: AppColors.littleDipper,
        //       width: 1.w
        //     ),
        //     borderRadius: BorderRadius.circular(4.r),
        //   ),
        //   focusedErrorBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(
        //       color: Colors.red,
        //     ),
        //     borderRadius: BorderRadius.circular(4.r),
        //   ),
        // ),
        ),
        builder: EasyLoading.init(),
        initialRoute: AppRoutes.Login,
        onGenerateRoute: RouteGenerator.generateRoute 
      ),
    );
  }
}
