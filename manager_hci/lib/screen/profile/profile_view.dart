import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text('Thông tin cá nhân'),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: CircleAvatar(
              maxRadius: 40,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
          Text(
            'Quản lý',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 5),
          buildTextField('Tên', 'Huỳnh Phúc Duy'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Email', 'duyhpse140893@fpt.edu.vn'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Địa chỉ', 'Lê Văn Lương, Nhà Bè District, HCM city'),
          SizedBox(
            height: 3,
          ),
          buildTextField('CMND/CCCD', '331 312 321'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Số điện thoại', '0908 690 095'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: RaisedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              color: Colors.blue[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Cập nhật thông tin cá nhân',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Hủy"),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ProfilePage();
          },
        ),
      );
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Tiếp Tục"),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ProfilePage();
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
            title: new Text(
              'Cập nhật thành công',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          );
        },
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Cập Nhật"),
    content: Text("Bạn có chắc muốn lưu thông tin?"),
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

TextField buildTextField(String label, String placeholder) {
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 3),
        labelText: label,
        labelStyle: TextStyle(fontSize: 20, color: Colors.blue[400]),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.black,
        )),
  );
}
