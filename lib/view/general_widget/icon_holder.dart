import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconHolder extends StatelessWidget {
  const IconHolder({super.key, required this.icon, this.h, this.w});
  final String icon;
  final double? h;
  final double? w;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: h,
      width: w,
    );
  }
}
