// ignore_for_file: must_be_immutable
import 'package:assesment/components/colors.dart';
import 'package:assesment/components/constants.dart';
import 'package:assesment/model/ui_model/home_model.dart';
import 'package:assesment/view/general_widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestmentTitle extends StatelessWidget with HomeModel {
  InvestmentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250.w,
          child: TextWidget(
            text: title,
            fontSize: 30.sp.toInt(),
            color: AppColors.kText.withOpacity(.5),
          ),
        ),
        AppDimens.gaps,
        SizedBox(
          width: 272.w,
          child: RichText(
            text: TextSpan(
                text: sub,
                style: GoogleFonts.karla(
                  fontSize: 17.sp,
                  color: AppColors.kText,
                  fontWeight: FontWeight.w300,
                ),
                children: [
                  TextSpan(
                    text: hyperLink,
                    style: GoogleFonts.karla(
                      fontSize: 17.sp,
                      color: AppColors.kSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
