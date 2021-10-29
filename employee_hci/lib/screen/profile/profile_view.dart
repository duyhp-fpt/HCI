import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: new AppBar(
        title: new Text('Profile'),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
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
            'Employee',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 5),
          buildTextField('Name', 'Huỳnh Phúc Duy'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Email', 'duyhpse140893@fpt.edu.vn'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Address', 'Lê Văn Lương, Nhà Bè District, HCM city'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Identity Card', '331 312 321'),
          SizedBox(
            height: 3,
          ),
          buildTextField('Phone Number', '0908 690 095'),
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: Text(
          'Update',
          style: TextStyle(
            color: Colors.blue[400],
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
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
    child: Text("Continue"),
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
              'Update successful',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          );
        },
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Activity"),
    content: Text("Do you want to saving information?"),
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
        labelStyle: TextStyle(fontSize: 20, color: Colors.blue[300]),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.black,
        )),
  );
}
