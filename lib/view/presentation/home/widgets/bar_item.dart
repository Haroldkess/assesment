import 'package:assesment/view/general_widget/icon_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BottomNavigationBarItem barItem({required String icon, required String title}) {
  return BottomNavigationBarItem(
    icon: IconHolder(
      icon: icon,
      w: 25.w,
      h: 25.h,
    ),
    label: title,
  );
}
