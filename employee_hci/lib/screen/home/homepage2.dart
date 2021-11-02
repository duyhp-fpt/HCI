import 'dart:io';

import 'package:employee_hci/model/activity.dart';
import 'package:employee_hci/screen/activity/createactivity.dart';
import 'package:employee_hci/screen/home/custom_app_bar.dart';
import 'package:employee_hci/screen/home/giveactivity.dart';
import 'package:employee_hci/screen/home/home.dart';
import 'package:employee_hci/screen/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage_2 extends StatefulWidget {
  @override
  State<HomePage_2> createState() => _HomePage_2State();
}

class _HomePage_2State extends State<HomePage_2> {
  int j = 0;
  int l = 0;
  File? image;
  final picker = ImagePicker();
  final List<ActivityManagePeople> listActivity =
      ActivityManagePeople.generateListWithPeople();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Danh sách người nhận (tiền)'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfilePage();
                      },
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Các loại công việc của cộng tác viên',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
            ),
            ListTile(
              title: Text('Danh sách cần mua'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Danh sách người nhận( sản phẩm)'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage3();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Danh sách người nhận( tiền)'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage_2();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listActivity.length,
          itemBuilder: (BuildContext context, int index) {
            if (!listActivity.elementAt(index).status) {
              j++;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        color: Colors.white,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  j.toString() + "    ",
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Column(children: [
                                  Text(
                                    'Tên người nhận: ' +
                                        listActivity.elementAt(index).name,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Địa chỉ: ' +
                                        listActivity.elementAt(index).address,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Số tiền: ' +
                                        listActivity.elementAt(index).quantity +
                                        listActivity.elementAt(index).uom,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ]),
                              ),
                              // Image.asset(listActivity.elementAt(index).image),
                            ]),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(1, 5, 5, 10),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 10),
                        child: RaisedButton(
                          color: Colors.blue[200],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(7)),
                          onPressed: () async {
                            final pickedFile = await picker.pickImage(
                                source: ImageSource.camera);
                            //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
                            setState(() {
                              if (pickedFile != null) {
                                j = 0;
                                l = index;
                                image = File(pickedFile.path);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor: Colors.green[200],
                                      title: new Text(
                                        'Chọn ảnh thành công',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                j = 0;
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor: Colors.green[200],
                                      title: new Text(
                                        'Chọn ảnh thất bại',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    );
                                  },
                                );
                              }
                            });
                          },
                          child: Text(
                            'Take a picture',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  index == l && image != null
                      ? Image.file(
                          image!,
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        )
                      : FlutterLogo(
                          size: 0,
                        ),
                  index == l && image != null
                      ? RaisedButton(
                          color: Colors.blue[200],
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : FlutterLogo(
                          size: 0,
                        ),
                ],
              );
            } else {
              return Container(
                height: 0,
              );
            }
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
                    return CreatePage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              // primary: Theme.of(context).primaryColor,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Hoạt động ngoài lề',
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
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage_2(),
        ),
      );
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: Colors.green[200],
            title: new Text(
              'You have done this activity',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          );
        },
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Report"),
    content: Text("Do you want to continue doing this activity?"),
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
