import 'package:assesment/model/data_model/investments_model.dart';
import 'package:assesment/view/presentation/investment_page/widgets/investment_view_card.dart';
import 'package:flutter/material.dart';

class InvestmentList extends StatelessWidget {
  const InvestmentList({super.key});
  @override
  Widget build(BuildContext context) {
    List<List<InvestmentData>> chunks = [];
    for (int i = 0; i < InvestmentsModel().investments.length; i += 2) {
      chunks.add(InvestmentsModel().investments.sublist(
          i,
          i + 2 > InvestmentsModel().investments.length
              ? InvestmentsModel().investments.length
              : i + 2));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: chunks
          .map((chunk) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: chunk
                      .map((data) => InvestmentCard(investment: data))
                      .toList(),
                ),
              ))
          .toList(),
    );
  }
}
