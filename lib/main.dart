import 'package:assesment/components/app_theme.dart';
import 'package:assesment/view/presentation/home/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Code Assesment',
          theme: AppTheme.lightTheme(context: context),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
      child: HomePage(),
    );
  }
}
