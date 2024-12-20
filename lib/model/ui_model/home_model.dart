import 'package:assesment/model/data_model/investment_category_model.dart';
import 'package:assesment/model/ui_model/app_icon.dart';

mixin class HomeModel {
  final String titleLineOne = "Choose an";
  final String titleLineTwo = "investment platform";
  final String sub = "Not sure what you want to invest in?";
  final String hyperLink = " See recommendations.";
  final String searchTitle = "Search for investment";

  final AppIcon appIcon = AppIcon();
  final InvestMentCategory category = InvestMentCategory();
  List<BottomNavItem> navItems = [
    BottomNavItem(icon: AppIcon().home, label: "Home"),
    BottomNavItem(icon: AppIcon().save, label: "Save"),
    BottomNavItem(icon: AppIcon().briefcase, label: "Portfolio"),
    BottomNavItem(icon: AppIcon().rewards, label: "Rewards"),
    BottomNavItem(icon: AppIcon().profile, label: "Account"),
  ];
}

class BottomNavItem {
  String label;
  String icon;

  BottomNavItem({required this.icon, required this.label});
}
