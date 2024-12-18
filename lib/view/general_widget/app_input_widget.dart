import 'package:assesment/components/colors.dart';
import 'package:assesment/view/general_widget/text_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputWidget extends StatelessWidget {
  final TextEditingController? textController;
  final String text, showForgotPasswordText;
  final TextAlign textAlign;
  final Widget? suffixIcon, prefixIcon;
  final String? hintText, customValidateErrorMessage;
  final String? counterText;
  final double? inputHeight;
  final int? maxCharacter, maxLines;
  final Key? widgetKey;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final Color titleColor;
  final bool showInputTitle,
      validatorStatus,
      obscureText,
      isPhoneNumber,
      isAdaptive,
      autoFocus,
      readOnly;
  final TextInputType textInputType;
  final VoidCallback? forgotPasswordPressed;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const AppInputWidget(
      {super.key,
      required this.text,
      required this.textInputType,
      this.showInputTitle = true,
      this.validatorStatus = true,
      this.obscureText = false,
      this.readOnly = false,
      this.isAdaptive = true,
      this.autoFocus = false,
      this.maxLines = 1,
      this.forgotPasswordPressed,
      this.textController,
      this.inputFormatters,
      this.textAlign = TextAlign.start,
      this.counterText = '',
      this.widgetKey,
      this.customValidateErrorMessage,
      this.focusNode,
      this.inputHeight,
      this.onChanged,
      this.showForgotPasswordText = 'Forgot password?',
      this.suffixIcon,
      this.prefixIcon,
      this.validator,
      this.hintText,
      this.titleColor = Colors.black,
      this.isPhoneNumber = false,
      this.maxCharacter});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    Color black = Colors.black;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showInputTitle) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: text,
                        style: GoogleFonts.karla(
                          color: isAdaptive ? black : titleColor,
                          //fontWeight: FontWeight.bold
                        )),
                    TextSpan(
                        text: text.isNotEmpty && validatorStatus ? ' ' : '',
                        style: GoogleFonts.karla(
                            color: isAdaptive ? black : titleColor,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
        ],
        Container(
          height: inputHeight,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (isPhoneNumber) ...[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    decoration: BoxDecoration(
                        color:
                            isAdaptive ? black.withOpacity(0.2) : Colors.grey,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    child: const Center(
                        child: TextWidget(
                            text: '+234', fontWeight: FontWeight.bold)),
                  )
                ],
                Expanded(
                  child: TextFormField(
                    focusNode: focusNode,
                    readOnly: readOnly,
                    autofocus: autoFocus,
                    inputFormatters: inputFormatters,
                    key: widgetKey,
                    maxLength: maxCharacter,
                    onTapOutside: (event) {},
                    style: GoogleFonts.karla(color: black),
                    maxLines: maxLines,
                    textAlign: textAlign,
                    controller: textController,
                    onChanged: onChanged,
                    keyboardType: textInputType,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        counterText: counterText,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.border.withOpacity(.2),
                                width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 12.h),
                        suffixIcon: suffixIcon,
                        prefixIcon: prefixIcon,
                        hintText: hintText,
                        hintStyle: GoogleFonts.karla(
                            fontSize: 14,
                            color: AppColors.kTextGrey.withOpacity(.6)),
                        errorStyle:
                            GoogleFonts.karla(fontStyle: FontStyle.italic)),
                    validator: validatorStatus
                        ? validator ??
                            (value) {
                              if (value == null || value.isEmpty) {
                                if (customValidateErrorMessage != null) {
                                  return customValidateErrorMessage;
                                }
                                return 'Please enter $text';
                              }
                              return null;
                            }
                        : null,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
