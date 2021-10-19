class Activity {
  int id;
  String product;
  String quantity;
  String price;
  String uom;
  String date;
  String image;
  Activity(this.id, this.product, this.quantity, this.price, this.uom,
      this.date, this.image);

  static List<Activity> generateListPayment() {
    return [
      Activity(1, 'Sữa', '100 thùng', '31500000', 'VND', '13-10-2021',
          'assets/images/house02.jpeg'),
      Activity(2, 'Mì gói', '100 thùng', '21000000', 'VND', '13-10-2021',
          'assets/images/house02.jpeg'),
      Activity(3, 'Sữa', '100 thùng', '31500000', 'VND', '13-10-2021',
          'assets/images/house02.jpeg'),
      Activity(4, 'Sữa', '100 thùng', '31500000', 'VND', '13-10-2021',
          'assets/images/house02.jpeg'),
      Activity(5, 'Sữa', '100 thùng', '31500000', 'VND', '13-10-2021',
          'assets/images/house02.jpeg'),
      Activity(6, 'Sữa', '100 thùng', '31500000', 'VND', '13-10-2021',
          'assets/images/house02.jpeg'),
    ];
  }
}
