import 'dart:io';

import 'package:employee_hci/model/activity.dart';
import 'package:employee_hci/screen/activity/createactivity.dart';
import 'package:employee_hci/screen/home/home.dart';
import 'package:employee_hci/screen/home/homepage2.dart';
import 'package:employee_hci/screen/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage3 extends StatefulWidget {
  @override
  State<HomePage3> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage3> {
  int i = 0;
  int k = 0;
  File? image;
  final picker = ImagePicker();
  final List<ActivityManageProductGive> listActivity =
      ActivityManageProductGive.generateListActivity();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('List product for people'),
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
                'Type \n        Of \n           Activity',
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
              title: Text('Product Activity ( Buy )'),
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
              title: Text('Product Activity ( Give )'),
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
              title: Text('Activity for person'),
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
              i++;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                i.toString() + "    ",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),

                            Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Text(
                                    'Name: ' +
                                        listActivity.elementAt(index).name,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Address: ' +
                                        listActivity.elementAt(index).address,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Product Name: ' +
                                        listActivity.elementAt(index).product,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Remaining quantity: ' +
                                        listActivity.elementAt(index).quantity,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            // Image.asset(listActivity.elementAt(index).image),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 10),
                        child: RaisedButton(
                          color: Colors.blue[200],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(5)),
                          onPressed: () async {
                            final pickedFile = await picker.pickImage(
                                source: ImageSource.camera);
                            //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
                            setState(() {
                              if (pickedFile != null) {
                                k = index;
                                // i = 0;
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
                                        'Choose image successful',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                // i = 0;
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor: Colors.green[200],
                                      title: new Text(
                                        'Choose image fail',
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
                  index == k && image != null
                      ? Image.file(
                          image!,
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        )
                      : FlutterLogo(
                          size: 0,
                        ),
                  index == k && image != null
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Quantity: ',
                              labelStyle: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      : FlutterLogo(
                          size: 0,
                        ),
                  index == k && image != null
                      ? RaisedButton(
                          color: Colors.blue[100],
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
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Create external activity',
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
          builder: (context) => HomePage(),
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