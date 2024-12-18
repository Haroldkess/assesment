import 'package:assesment/components/colors.dart';
import 'package:assesment/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  static ColorScheme lightColorScheme =
      ColorScheme.fromSeed(seedColor: AppColors.kPrimary);
  static ColorScheme darkColorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.kPrimary, brightness: Brightness.dark);

  static ThemeData lightTheme({required BuildContext context}) {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.kWhite,
        dialogBackgroundColor: AppColors.kWhite,
        useMaterial3: true,
        fontFamily: 'Karla',
        textTheme: GoogleFonts.karlaTextTheme(
          Theme.of(context).textTheme,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: GoogleFonts.karla(
            fontWeight: FontWeight.w300,
            color: AppColors.kPrimary,
            decorationStyle: TextDecorationStyle.solid,
            fontSize: 13.sp,
          ),
          unselectedLabelStyle: GoogleFonts.karla(
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
              color: AppColors.kUnselectedTab),
        ),
        colorScheme: AppTheme.lightColorScheme,
        dialogTheme: DialogTheme(
            backgroundColor: AppColors.kWhite,
            surfaceTintColor: AppColors.kWhite),
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: AppColors.kWhite,
            surfaceTintColor: AppColors.kWhite),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: AppColors.kPrimary,
            foregroundColor: AppColors.kPrimary),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(AppDimens.kDefaultBtnRadius),
                ),
                backgroundColor: AppColors.kPrimary,
                //foregroundColor: lightColorScheme.onSurface,
                foregroundColor: AppColors.kWhite,
                textStyle: GoogleFonts.karla(
                    fontWeight: FontWeight.bold, fontSize: 16))),
        textButtonTheme: TextButtonThemeData(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(AppDimens.kDefaultBtnRadius),
                ),
                //foregroundColor: AppColors.kText,
                textStyle: GoogleFonts.karla(
                    fontWeight: FontWeight.bold, fontSize: 16))),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.kDefaultBtnRadius),
          ),
          textStyle:
              GoogleFonts.karla(fontWeight: FontWeight.bold, fontSize: 16),
          side: BorderSide(
            width: 1.0,
            color: lightColorScheme.primary,
            style: BorderStyle.solid,
          ),
        )),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.kPrimary,
          //foregroundColor: colorWhite,
          elevation: 0,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: AppColors.kText,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
        ));
  }

  static ThemeData darkTheme({required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor: darkColorScheme.surface,
      dialogBackgroundColor: darkColorScheme.surface,
      useMaterial3: true,
      textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
      ),
      colorScheme: AppTheme.darkColorScheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.kPrimary,
          foregroundColor: AppColors.kPrimary),
      dialogTheme: DialogTheme(
        backgroundColor: darkColorScheme.surface,
        surfaceTintColor: darkColorScheme.surface,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkColorScheme.surface,
        surfaceTintColor: darkColorScheme.surface,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppDimens.kDefaultBtnRadius),
              ),
              backgroundColor: AppColors.kPrimary,
              foregroundColor: AppColors.kWhite,
              textStyle: GoogleFonts.karla(
                  fontWeight: FontWeight.bold, fontSize: 16))),
      textButtonTheme: TextButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppDimens.kDefaultBtnRadius),
              ),
              //foregroundColor: AppColors.kPrimary,
              textStyle: GoogleFonts.karla(
                  fontWeight: FontWeight.bold, fontSize: 16))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.kDefaultBtnRadius),
        ),
        //backgroundColor: brandColor,
        textStyle: GoogleFonts.karla(fontWeight: FontWeight.bold, fontSize: 16),
        //foregroundColor: AppColors.kPrimary,
        side: BorderSide(
          width: 1.0,
          color: darkColorScheme.primary,
          style: BorderStyle.solid,
        ),
      )),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.kPrimary,
        //foregroundColor: kColorWhite,
        elevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColors.kText,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.label,
      ),
      //textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).primaryTextTheme),
    );
  }
}
