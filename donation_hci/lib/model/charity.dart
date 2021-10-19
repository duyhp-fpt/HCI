class Charity {
  String name;
  String address;
  String imageUrl;
  String nameOrganization;
  String totalPrice;
  String uom;
  String description;
  Charity(this.name, this.address, this.imageUrl, this.nameOrganization,
      this.totalPrice, this.uom, this.description);

  static List<Charity> generateRecommended() {
    return [
      // Charity('Charity Activity in Atlanta', 'Atlanta, United State',
      //     'assets/images/charity_1.jpg'),
      Charity(
        'Mặt trời cho em',
        'Việt Nam',
        'assets/images/charity_2.png',
        'Quỹ ủng hộ trẻ em',
        '200,000,000 ',
        'VND',
        'Chương trình “Mặt trời cho em” hướng tới thông điệp: "Làm từ thiện không phải chỉ đơn giản là cho đi, đây là hành động mang lại hy vọng sống, năng lượng tươi sáng hơn cho trẻ em".',
      ),
      Charity(
        'The Moon House',
        'Atlanta, United State',
        'assets/images/house01.jpeg',
        'Hội đồng hương',
        '20000000 ',
        'VND',
        'dsadsadadas',
      ),
      Charity(
          'The Moon House',
          'Atlanta, United State',
          'assets/images/house02.jpeg',
          'Hội đồng hương',
          '2000000 ',
          'VND',
          'dsadsadsaas'),
    ];
  }

  static List<Charity> generateHistory() {
    return [
      Charity(
          'Mặt trời cho em',
          'Atlanta, United State',
          'assets/images/charity_2.png',
          'Hội đồng hương',
          '20000000',
          'VND',
          'Chương trình “Mặt trời cho em” hướng tới thông điệp: "Làm từ thiện không phải chỉ đơn giản là cho đi, đây là hành động mang lại hy vọng sống, năng lượng tươi sáng hơn cho trẻ em".'),
      // Charity('The Moon House', 'Atlanta, United State',
      //     'assets/images/offer02.jpeg'),
    ];
  }
}
