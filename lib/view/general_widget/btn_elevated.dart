import 'package:assesment/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnElevated extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Key? btnKey;
  final bool useFlexibleWith;
  final VoidCallback? onPressed;
  final double btnHeight, btnWidth, btnRadius;

  final Color? loadingColor;
  const BtnElevated(
      {super.key,
      required this.child,
      this.btnHeight = AppDimens.kDefaultBtnHeight,
      this.useFlexibleWith = false,
      this.btnRadius = AppDimens.kDefaultBtnRadius,
      this.btnWidth = double.infinity,
      this.backgroundColor,
      this.btnKey,
      this.loadingColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SizedBox(
      height: btnHeight.h,
      width: useFlexibleWith == true ? null : btnWidth.w,
      child: ElevatedButton(
          key: btnKey,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(btnRadius),
              ),
              backgroundColor: backgroundColor),
          onPressed: onPressed,
          child: child),
    );
  }
}
