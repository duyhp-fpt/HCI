class Employee {
  int id;
  String userName;
  String password;
  String phoneNumber;
  bool status;
  Employee(
      this.id, this.userName, this.password, this.phoneNumber, this.status);

  static List<Employee> generateListEmployee() {
    return [
      Employee(1, 'Employee1', '123456', '0908690095', true),
      Employee(2, 'Employee2', '123456', '0908690095', false),
      Employee(3, 'Employee3', '123456', '0908690095', true),
      Employee(4, 'Employee4', '123456', '0908690095', true),
      Employee(5, 'Employee5', '123456', '0908690095', true),
      Employee(6, 'Employee6', '123456', '0908690095', false),
      Employee(7, 'Employee7', '123456', '0908690095', false),
      Employee(8, 'Employee8', '123456', '0908690095', true),
      Employee(9, 'Employee9', '123456', '0908690095', true),
      Employee(10, 'Employee10', '123456', '0908690095', true),
      Employee(11, 'Employee11', '123456', '0908690095', true),
      Employee(12, 'Employee12', '123456', '0908690095', true),
    ];
  }
}
