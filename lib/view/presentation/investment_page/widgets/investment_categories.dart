// ignore_for_file: must_be_immutable

import 'package:animate_do/animate_do.dart';
import 'package:assesment/components/constants.dart';
import 'package:assesment/model/ui_model/home_model.dart';
import 'package:assesment/view/general_widget/chip_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvestmentCategories extends StatelessWidget with HomeModel {
  InvestmentCategories({super.key});
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(seconds: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: category.categories
              .map((e) => ChipView(
                    name: e,
                  ).paddingOnly(right: AppDimens.kDefaultBtnPadding))
              .toList(),
        ),
      ),
    );
  }
}
