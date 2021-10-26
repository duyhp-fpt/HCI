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
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
      ActivityManageProduct('Gạo', '1000 kg', true),
      ActivityManageProduct('Thuốc', '1000 vĩ', false),
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
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Toàn',
        'Cao Bằng',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Phượng',
        'Bắc Giang',
        '1,000,000',
        'VND',
        false,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Toàn',
        'Cao Bằng',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Phượng',
        'Bắc Giang',
        '1,000,000',
        'VND',
        true,
      ),
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
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Toàn',
        'Cao Bằng',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Phượng',
        'Bắc Giang',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Văn Toàn',
        'Cao Bằng',
        '1,000,000',
        'VND',
        true,
      ),
      ActivityManagePeople(
        'Nguyễn Công Phượng',
        'Bắc Giang',
        '1,000,000',
        'VND',
        false,
      ),
    ];
  }
}
