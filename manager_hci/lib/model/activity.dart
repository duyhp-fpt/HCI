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
  bool status;
  ActivityManageProduct(this.product, this.quantity, this.status);
  static List<ActivityManageProduct> generateListActivity() {
    return [
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Sữa', '1000 thùng', true),
      ActivityManageProduct('Mì tôm', '1000 thùng', false),
      ActivityManageProduct('Quần áo', '1000 bộ', true),
      ActivityManageProduct('Vở', '1000 quyển', false),
      ActivityManageProduct('Nước uống', '1000 bình', true),
      ActivityManageProduct('Bánh kẹo', '1000 thùng', false),
      ActivityManageProduct('Tiền Mặt', '100 triệu', true),
      ActivityManageProduct('Thuốc', '500 vĩ', false),
      ActivityManageProduct('Gạo', '300 kg', true),
      ActivityManageProduct('Mì tôm', '100 thùng', false),
      ActivityManageProduct('Tiền Mặt', '500 triệu', true),
      ActivityManageProduct('Quần áo', '300 bộ', false),
      ActivityManageProduct('Gạo', '1500 kg', true),
      ActivityManageProduct('Thuốc', '1200 vĩ', false),
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
        '5,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Phượng',
        'Bắc Giang',
        '2,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Tấn Vỹ',
        'Cao Bằng',
        '6,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Thị Trang',
        'Bắc Giang',
        '10,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Võ Tấn Đạt',
        'TP.Hồ Chí Minh',
        '3,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Huỳnh Phúc Duy',
        'Hà Nội',
        '8,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Thanh',
        'Cao Bằng',
        '10,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Vinh',
        'Bắc Giang',
        '9,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Thị Hoa',
        'Lạng Sơn',
        '4,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Thanh',
        'Đắk Lắk',
        '5,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Chiến',
        'Nha Trang',
        '6,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Huỳnh Anh Vũ',
        'Hải Phòng',
        '8,000,000',
        'VND',
        true,
      ),
    ];
  }
}
