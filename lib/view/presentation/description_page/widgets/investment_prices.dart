import 'package:assesment/components/utils.dart';
import 'package:assesment/view/general_widget/app_input_widget.dart';
import 'package:assesment/view/general_widget/chip_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Prices extends StatelessWidget {
  const Prices({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> prices = ["5000", "10000", "20000", "50000"];
    return Wrap(
      children: [
        ...prices.map((e) => Container(
            width: 90.w,
            alignment: Alignment.center,
            child: ChipView(
              name: "${Utils.currencySymbol()}${Utils.convertToCurrency(e)}",
              isDescriptor: true,
              borderColor: Colors.transparent,
            )).paddingOnly(top: 25.h)),
        SizedBox(
          width: 220.w,
          child: AppInputWidget(
            inputHeight: 44.h,
            text: "",
            textInputType: TextInputType.phone,
            hintText: "Enter other amount",
          ),
        ).paddingOnly(bottom: 20.h),
      ],
    );
  }
}
