import 'package:flutter/material.dart';
import 'package:house_rent/model/donate.dart';
import 'package:house_rent/screen/listdonate/createemp.dart';

final List<Employee> listDonate = Employee.generateListEmployee();

class ListDonate extends StatefulWidget {
  // final Donate donate;
  // const ListDonate({Key? key, required this.donate}) : super(key: key);
  @override
  State<ListDonate> createState() => _ListDonateState();
}

class _ListDonateState extends State<ListDonate> {
  String dropdownValue = 'Không hoàn thành công việc';

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      // set up the buttons
      Widget cancelButton = FlatButton(
        child: Text("Cancel"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ListDonate();
              },
            ),
          );
        },
      );
      Widget continueButton = FlatButton(
        child: Text("Continue"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ListDonate();
              },
            ),
          );
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.green[100],
                title: new Text('Xóa thành công',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center),
              );
            },
          );
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Lý do hủy tài khoản"),
        content: DropdownButton<String>(
          value: dropdownValue,
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'Không hoàn thành công việc',
            'Cộng tác viên không \ntiếp tục hoạt động'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        // Text("Do you want to continue deleting this activity?"),

        actions: [
          cancelButton,
          continueButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text('Danh sách cộng tác viện'),
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listDonate.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        child: Text(listDonate.elementAt(index).id.toString()),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Tên đăng nhập: ' +
                                    listDonate.elementAt(index).userName,
                                textAlign: TextAlign.left),
                            Text(
                                'Mật khẩu: ' +
                                    listDonate.elementAt(index).password,
                                textAlign: TextAlign.left),
                            Text('Tên: ' + listDonate.elementAt(index).name,
                                textAlign: TextAlign.left),
                            Text(
                                'Số điện thoại: ' +
                                    listDonate.elementAt(index).phoneNumber,
                                textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.red[200],
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text('Hủy tài khoản'),
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        // width: 20,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CreateEmpPage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              // primary: Theme.of(context).primaryColor,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Tạo cộng tác viên mới',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );

    // bottomNavigationBar: CustomBottomNavigationBar(),
  }
}
