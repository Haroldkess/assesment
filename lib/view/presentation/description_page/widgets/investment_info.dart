import 'package:assesment/components/colors.dart';
import 'package:assesment/components/constants.dart';
import 'package:assesment/model/data_model/investments_model.dart';
import 'package:assesment/view/general_widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestmentInfo extends StatelessWidget {
  const InvestmentInfo({super.key, required this.investment});
  final InvestmentData investment;
  final String unit = 'per unit';
  final String status = "Sold out";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    investment.icon,
                  ))),
            ),
            Column(
              children: [
                TextWidget(
                  text: investment.roi,
                  fontSize: 15.sp.toInt(),
                  fontWeight: FontWeight.w600,
                  color: AppColors.kSecondary,
                ),
                TextWidget(
                  text: investment.duration,
                  fontSize: 13.sp.toInt(),
                  fontWeight: FontWeight.w300,
                ),
              ],
            )
          ],
        ),
        AppDimens.gaps,
        AppDimens.gaps,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: "${investment.name} Investment",
                  fontSize: 17.sp.toInt(),
                  fontWeight: FontWeight.w700,
                  color: AppColors.kText,
                ),
                AppDimens.gaps,
                TextWidget(
                  text: "by PropertyVest",
                  fontSize: 13.sp.toInt(),
                  fontWeight: FontWeight.w300,
                  color: AppColors.kText,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
