import 'package:assesment/components/colors.dart';
import 'package:assesment/components/constants.dart';
import 'package:assesment/view/general_widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChipView extends StatelessWidget {
  const ChipView(
      {super.key,
      required this.name,
      this.borderColor,
      this.isDescriptor = false});
  final String name;
  final Color? borderColor;
  final bool isDescriptor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: borderColor ?? const Color(0xFFC9C9C9).withOpacity(.4))),
      child: TextWidget(
        text: name,
        color: AppColors.kText,
        fontWeight: isDescriptor ? FontWeight.w600 : FontWeight.w500,
        isPrice: true,
        fontSize: 15.sp.toInt(),
      ).paddingSymmetric(
          vertical: AppDimens.kDefaultBtnPadding,
          horizontal: AppDimens.kDefaultBtnPadding),
    );
  }
}
