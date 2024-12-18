import 'package:assesment/components/constants.dart';
import 'package:assesment/view/general_widget/app_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInputWidget(
          inputHeight: 44.h,
          text: "Phone Number",
          textInputType: TextInputType.phone,
          hintText: "+234 806 123 8970",
        ),
        AppDimens.gapsx2,
        AppInputWidget(
          inputHeight: 44.h,
          text: "Customer Name",
          textInputType: TextInputType.text,
          hintText: "Joseph Kalu",
        ),
        AppDimens.gapsx2,
        AppInputWidget(
          inputHeight: 44.h,
          text: "Pin",
          obscureText: true,
          textInputType: TextInputType.number,
          hintText: "****",
        ),
      ],
    );
  }
}
