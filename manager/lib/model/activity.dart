// class Activity {
//   int id;
//   String product;
//   String quantity;
//   String price;
//   String uom;
//   String date;
//   String image;
//   Activity(this.id, this.product, this.quantity, this.price, this.uom,
//       this.date, this.image);
//   static List<Activity> generateListPayment() {
//     return [
//       Activity(1, 'Thực Phẩm', '100', '31,500,000', 'VND', '13-10-2021',
//           'assets/images/image_4.jpg'),
//       Activity(2, 'Nhu yếu phẩm', '100', '21,000,000', 'VND', '13-10-2021',
//           'assets/images/image_5.jpg'),
//       Activity(3, 'Khẩu trang', '3', '150,000 ', 'VND', '27-01-2021',
//           'assets/images/khautrang.jpg'),
//       Activity(4, 'Thực phẩm', '100', '31,500,000', 'VND', '13-10-2021',
//           'assets/images/image_4.jpg'),
//       Activity(5, 'Nhu yếu phẩm', '100', '31500000', 'VND', '13-10-2021',
//           'assets/images/image_5.jpg'),
//       Activity(6, 'Khẩu trang', '3', '150,000 ', 'VND', '27-01-2021',
//           'assets/images/khautrang.jpg'),
//     ];
//   }
// }

class ActivityManageProduct {
  String product;
  String quantity;
  String quantitybought;
  bool status;
  String uom;
  ActivityManageProduct(
      this.product, this.quantity, this.quantitybought, this.status, this.uom);
  static List<ActivityManageProduct> generateListActivity() {
    return [
      ActivityManageProduct('Gạo', '1000', '1000', true, 'kg'),
      ActivityManageProduct('Thuốc', '1000 ', '1000', true, 'vĩ'),
      ActivityManageProduct('Sữa', '1000', '1000', true, 'thùng'),
      ActivityManageProduct('Mì tôm', '1000 ', '1000', true, 'thùng'),
      ActivityManageProduct('Quần áo', '1000', '1000', true, 'bộ'),
      ActivityManageProduct('Vở', '1000', '450', false, 'quyển'),
      ActivityManageProduct('Nước uống', '1000 ', '500', false, 'bình'),
      ActivityManageProduct('Bánh kẹo', '1000 ', '320', false, 'thùng'),
    ];
  }
}

class ActivityManageProductGive {
  String name;
  String address;
  String product;
  String quantity;
  bool status;
  ActivityManageProductGive(
      this.name, this.address, this.product, this.quantity, this.status);
  static List<ActivityManageProductGive> generateListActivity() {
    return [
      ActivityManageProductGive(
          'Nguyễn Văn Chiến', 'Nha Trang', 'Gạo', '10 kg', true),
      ActivityManageProductGive(
          'Nguyễn Văn Chiến', 'Nha Trang', 'Thuốc', '10 vĩ', false),
      ActivityManageProductGive(
          'Nguyễn Văn Toàn', 'Cao Bằng', 'Sữa', '1 thùng', true),
      ActivityManageProductGive(
          'Nguyễn Văn Toàn', 'Cao Bằng', 'Mì tôm', '1 thùng', false),
      ActivityManageProductGive(
          'Nguyễn Thị Trang', 'Bắc Giang', 'Quần áo', '3 bộ', true),
      ActivityManageProductGive(
          'Nguyễn Thị Trang', 'Bắc Giang', 'Vở', '10 quyển', false),
      ActivityManageProductGive(
          'Nguyễn Tấn Vỹ', 'Cao Bằng', 'Nước uống', '2 bình', true),
      ActivityManageProductGive(
          'Nguyễn Văn Chiến', 'Nha Trang', 'Bánh kẹo', '1 thùng', false),
      ActivityManageProductGive(
          'Nguyễn Thị Hoa', 'Lạng Sơn', 'Thuốc', '15 vĩ', false),
      ActivityManageProductGive(
          'Nguyễn Thị Hoa', 'Lạng Sơn', 'Gạo', '30 kg', true),
      ActivityManageProductGive(
          'Nguyễn Thị Hoa', 'Lạng Sơn', 'Mì tôm', '1 thùng', false),
      ActivityManageProductGive(
          'Huỳnh Anh Vũ', 'Hải Phòng', 'Quần áo', '3 bộ', false),
      ActivityManageProductGive(
          'Huỳnh Anh Vũ', 'Hải Phòng', 'Gạo', '15 kg', true),
      ActivityManageProductGive(
          'Huỳnh Anh Vũ', 'Hải Phòng', 'Thuốc', '12 vĩ', false),
    ];
  }
}

class ActivityManagePeople {
  String name;
  String address;
  String quantity;
  String uom;
  bool status;
  ActivityManagePeople(
      this.name, this.address, this.quantity, this.uom, this.status);
  static List<ActivityManagePeople> generateListWithPeople() {
    return [
      ActivityManagePeople(
        'Nguyễn Văn Toàn',
        'Cao Bằng',
        '1,000,000',
        'VND',
        false,
      ),
      ActivityManagePeople(
        'Nguyễn Công Phượng',
        'Bắc Giang',
        '2,000,000',
        'VND',
        false,
      ),
      ActivityManagePeople(
        'Nguyễn Tấn Vỹ',
        'Cao Bằng',
        '6,000,000',
        'VND',
        false,
      ),
      ActivityManagePeople(
        'Nguyễn Thị Trang',
        'Bắc Giang',
        '1,000,000',
        'VND',
        false,
      ),
      ActivityManagePeople(
        'Võ Tấn Đạt',
        'TP.Hồ Chí Minh',
        '1,000,000',
        'VND',
        false,
      ),
      ActivityManagePeople(
        'Huỳnh Phúc Duy',
        'Hà Nội',
        '2,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Thanh',
        'Cao Bằng',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Vinh',
        'Bắc Giang',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Thị Hoa',
        'Lạng Sơn',
        '2,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Thanh',
        'Đắk Lắk',
        '3,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Chiến',
        'Nha Trang',
        '2,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Huỳnh Anh Vũ',
        'Hải Phòng',
        '1,000,000',
        'VND',
        true,
      ),
    ];
  }
}
