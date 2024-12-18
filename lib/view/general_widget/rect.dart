import 'package:assesment/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectDesign extends StatelessWidget {
  const RectDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 6.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: AppColors.kTextGrey),
        )
      ],
    );
  }
}
