import 'package:assesment/components/colors.dart';
import 'package:assesment/components/constants.dart';
import 'package:assesment/model/data_model/investments_model.dart';
import 'package:assesment/view/general_widget/text_widget.dart';
import 'package:assesment/view/presentation/description_page/widgets/description_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestmentCard extends StatelessWidget {
  final InvestmentData investment;
  const InvestmentCard({super.key, required this.investment});
  final String unit = 'per unit';
  final String status = "Sold out";
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => InvestmentExtra.showInvestmentDescriptionSheet(context,
          investment: investment),
      child: Container(
        width: 272.w,
        height: 174.h,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.kDefaultBtnRadius),
            color: AppColors.kWhite,
            border: Border.all(color: AppColors.border)),
        padding: const EdgeInsets.all(8),
        child: Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: investment.name,
                      fontSize: 15.sp.toInt(),
                      fontWeight: FontWeight.w700,
                      color: AppColors.kText,
                    ),
                    AppDimens.gaps,
                    TextWidget(
                      text: investment.price,
                      fontSize: 15.sp.toInt(),
                      fontWeight: FontWeight.w700,
                      color: AppColors.kText,
                    ),
                    TextWidget(
                      text: unit,
                      fontSize: 13.sp.toInt(),
                      fontWeight: FontWeight.w300,
                      color: AppColors.kText,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextWidget(
                      text: investment.status,
                      fontSize: 13.sp.toInt(),
                      fontWeight: FontWeight.w600,
                      color: investment.status.contains(status)
                          ? AppColors.error
                          : AppColors.kSecondary,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
