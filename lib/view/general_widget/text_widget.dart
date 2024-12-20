import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final bool useAutoSizeText;
  final TextOverflow? textOverflow;
  final FontStyle? fontStyle;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final TextAlign? textAlign;
  final int fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final bool isPrice;
  final double? lineHeight;
  const TextWidget(
      {super.key,
      required this.text,
      this.textAlign,
      this.fontSize = 13,
      this.useAutoSizeText = false,
      this.isPrice = false,
      this.color,
      this.maxLines,
      this.fontStyle,
      this.textOverflow,
      this.lineHeight,
      this.fontWeight,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    if (useAutoSizeText) {
      return AutoSizeText(
        text,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        style: GoogleFonts.karla(
          color: color ?? Colors.black,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          decoration: textDecoration,
        ),
      );
    }
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      style: isPrice
          ? GoogleFonts.roboto(
              color: color ?? Colors.black,
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: textDecoration,
            )
          : GoogleFonts.karla(
              color: color ?? Colors.black,
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
              decoration: textDecoration,
            ),
    );
  }
}
