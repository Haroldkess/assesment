class InvestmentsModel {
  static List<InvestmentData> investmentData = [
    InvestmentData(
        id: 0,
        name: "Propertyvest Estate",
        icon: "assets/image/chase.png",
        price: "N5,000",
        status: "Still selling",
        roi: "20%",
        duration: "Returns in 9 months"),
    InvestmentData(
        id: 1,
        name: "Propertyvest Estate",
        icon: "assets/image/chase.png",
        price: "N5,000",
        status: "Still selling",
        roi: "20%",
        duration: "Returns in 9 months"),
    InvestmentData(
        id: 2,
        name: "Cashew Nuts",
        icon: "assets/image/agro.png",
        price: "N15,000",
        status: "Sold out",
        roi: "30%",
        duration: "Returns in 9 months"),
    InvestmentData(
        id: 3,
        name: "Cashew Nuts",
        icon: "assets/image/agro.png",
        price: "N15,000",
        status: "Sold out",
        roi: "30%",
        duration: "Returns in 9 months"),
    InvestmentData(
        id: 2,
        name: "Cashew Nuts",
        icon: "assets/image/thrive.png",
        price: "N15,000",
        status: "Sold out",
        roi: "30%",
        duration: "Returns in 9 months"),
    InvestmentData(
        id: 3,
        name: "Cashew Nuts",
        icon: "assets/image/thrive.png",
        price: "N15,000",
        status: "Sold out",
        roi: "30%",
        duration: "Returns in 9 months"),
  ];

  List<InvestmentData> investments;

  InvestmentsModel() : investments = investmentData;
}

class InvestmentData {
  int id;
  String name;
  String icon;
  String price;
  String status;
  String roi;
  String duration;

  InvestmentData(
      {required this.id,
      required this.name,
      required this.icon,
      required this.price,
      required this.status,
      required this.roi,
      required this.duration});
}
