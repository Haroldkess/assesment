import 'package:assesment/model/data_model/investments_model.dart';
import 'package:assesment/view/presentation/description_page/pages/investment_description_page.dart';
import 'package:flutter/material.dart';

class InvestmentExtra {
  static void showInvestmentDescriptionSheet(BuildContext context,
      {required InvestmentData investment}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => InvestmentDescriptionPage(
        investment: investment,
      ),
    );
  }
}
