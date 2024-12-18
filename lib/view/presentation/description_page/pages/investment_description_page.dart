import 'package:assesment/components/colors.dart';
import 'package:assesment/components/constants.dart';
import 'package:assesment/model/data_model/investments_model.dart';
import 'package:assesment/model/ui_model/app_icon.dart';
import 'package:assesment/view/general_widget/btn_elevated.dart';
import 'package:assesment/view/general_widget/icon_holder.dart';
import 'package:assesment/view/general_widget/rect.dart';
import 'package:assesment/view/general_widget/text_widget.dart';
import 'package:assesment/view/presentation/description_page/widgets/description_field.dart';
import 'package:assesment/view/presentation/description_page/widgets/investment_info.dart';
import 'package:assesment/view/presentation/description_page/widgets/investment_prices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InvestmentDescriptionPage extends StatelessWidget {
  const InvestmentDescriptionPage({super.key, required this.investment});
  final InvestmentData investment;
  final String learnMore = "Learn more aboout the investment";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.87.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppDimens.gapsx2,
                  InvestmentInfo(investment: investment),
                  const Prices(),
                  AppDimens.gaps,
                  const DescriptionField(),
                  AppDimens.gapsx2,
                  BtnElevated(
                      backgroundColor: AppColors.kButtonColor,
                      child: Center(
                        child: TextWidget(
                            text: "invest now".toUpperCase(),
                            fontSize: 15.sp.toInt(),
                            fontWeight: FontWeight.w700,
                            color: AppColors.kWhite),
                      ),
                      onPressed: () {}),
                  AppDimens.gaps,
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                                text: learnMore,
                                fontSize: 17.sp.toInt(),
                                fontWeight: FontWeight.w400,
                                color: AppColors.kButtonColor)
                            .paddingOnly(right: 5),
                        IconHolder(
                          icon: AppIcon().right,
                          w: 7,
                          h: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ).paddingAll(20),
            ),
          ),
          const RectDesign().paddingOnly(top: 15)
        ],
      ),
    );
  }
}
