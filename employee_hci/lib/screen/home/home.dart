import 'dart:io';

import 'package:employee_hci/model/activity.dart';
import 'package:employee_hci/screen/activity/createactivity.dart';
import 'package:employee_hci/screen/home/custom_app_bar.dart';
import 'package:employee_hci/screen/home/homepage2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  int k = 0;
  File? image;
  final picker = ImagePicker();
  final List<ActivityManageProduct> listActivity =
      ActivityManageProduct.generateListActivity();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
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
              title: Text('Product Activity'),
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
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                i.toString() + "    ",
                              ),
                            ),

                            Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Text('Product Name: ' +
                                      listActivity.elementAt(index).product),
                                  Text('Quantity: ' +
                                      listActivity.elementAt(index).quantity),
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
                          color: Colors.blue[100],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(7)),
                          onPressed: () async {
                            final pickedFile = await picker.pickImage(
                                source: ImageSource.camera);
                            //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
                            setState(() {
                              if (pickedFile != null) {
                                k = index;
                                image = File(pickedFile.path);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor: Colors.green[100],
                                      title: new Text(
                                        'Choose image successful',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      backgroundColor: Colors.green[100],
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
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  index == k
                      ? Image.file(
                          image!,
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
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
      // bottomNavigationBar: SizedBox(
      //   height: 50,
      //   // width: 20,
      //   child: Container(
      //     padding: EdgeInsets.symmetric(horizontal: 20),
      //     child: ElevatedButton(
      //       onPressed: () {
      //         Navigator.of(context).push(
      //           MaterialPageRoute(
      //             builder: (context) {
      //               return CreatePage();
      //             },
      //           ),
      //         );
      //       },
      //       style: ElevatedButton.styleFrom(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //         primary: Theme.of(context).primaryColor,
      //       ),
      //       child: Container(
      //         alignment: Alignment.center,
      //         padding: EdgeInsets.symmetric(vertical: 15),
      //         child: Text(
      //           'Create external activity',
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 16,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
