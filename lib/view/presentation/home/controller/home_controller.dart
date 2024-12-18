import 'package:assesment/view/presentation/investment_page/pages/investment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<Widget> homeNavigationPages = <Widget>[
    InvestmentPage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ].obs;
}
