// ignore_for_file: must_be_immutable
import 'package:assesment/components/constants.dart';
import 'package:assesment/model/ui_model/home_model.dart';
import 'package:assesment/view/general_widget/app_input_widget.dart';
import 'package:assesment/view/general_widget/icon_holder.dart';
import 'package:assesment/view/presentation/investment_page/widgets/investment_categories.dart';
import 'package:assesment/view/presentation/investment_page/widgets/investment_list.dart';
import 'package:assesment/view/presentation/investment_page/widgets/investment_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InvestmentPage extends StatelessWidget with HomeModel {
  InvestmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDimens.gaps,
              IconHolder(
                icon: appIcon.back,
                h: 24.h,
                w: 24.41.w,
              ),
              AppDimens.gapsx2,
              InvestmentTitle(),
              AppDimens.gaps,
              AppInputWidget(
                text: "",
                textInputType: TextInputType.text,
                hintText: searchTitle,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconHolder(
                    icon: appIcon.search,
                    h: 17,
                    w: 17,
                  ),
                ),
              ),
              AppDimens.gapsx2,
              InvestmentCategories(),
              AppDimens.gaps,
              const InvestmentList(),
            ],
          ).paddingAll(10),
        ),
      ),
    );
  }
}
