// ignore_for_file: must_be_immutable
import 'package:assesment/components/colors.dart';
import 'package:assesment/model/ui_model/home_model.dart';
import 'package:assesment/view/presentation/home/controller/home_controller.dart';
import 'package:assesment/view/presentation/home/widgets/bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget with HomeModel {
  HomePage({super.key});
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ObxValue((indexVal) {
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            for (var nav in navItems) barItem(icon: nav.icon, title: nav.label),
          ],
          currentIndex: indexVal.value,
          selectedItemColor: Colors.white,
          selectedFontSize: 13.sp,
          unselectedFontSize: 13.sp,
          useLegacyColorScheme: false,
          unselectedItemColor: AppColors.kUnselectedTab,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (val) {},
        );
      }, homeController.selectedIndex),
      body: Obx(
        () {
          return homeController.homeNavigationPages
              .elementAt(homeController.selectedIndex.value);
        },
      ),
    );
  }
}
