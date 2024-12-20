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
import 'package:get/get.dart';

class InvestmentDescriptionPage extends StatelessWidget {
  const InvestmentDescriptionPage({super.key, required this.investment});
  final InvestmentData investment;
  final String learnMore = "Learn more aboout the investment";
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.85,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                  top: AppDimens.kTopPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppDimens.gapsx2,
                  InvestmentInfo(investment: investment),
                  const Prices(),
                  AppDimens.gaps,
                  const DescriptionField(),
                  AppDimens.space,
                ],
              ).paddingAll(20),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: const RectDesign().paddingOnly(top: 15)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BtnElevated(
                    backgroundColor: AppColors.kButtonColor,
                    child: Center(
                      child: TextWidget(
                          text: "invest now".toUpperCase(),
                          fontSize: 15,
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
                              fontSize: 17,
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
          )
        ],
      ),
    );
  }
}
