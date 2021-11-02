import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  createState() => CreatePageState();
}

class CreatePageState extends State<CreatePage> {
  String dropdownValue = 'Tiền';
  File? image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: new Text('Tạo hoạt động ngoài lề'),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Tên người nhận: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: 'CMND/CCCD: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Ngày sinh: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Địa chỉ: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Lý do: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Type: ',
                      style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                    DropdownButton<String>(
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
                      items: <String>['Tiền', 'Không phải tiền']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                if (dropdownValue == 'Không phải tiền')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Tên sản phầm: ',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                if (dropdownValue == 'Tiền')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Số tiền: ',
                        suffix: Text('VND'),
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                if (dropdownValue == 'Không phải tiền')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 6),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Số lượng: ',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(1, 5, 5, 6),
              ),
              image != null
                  ? Image.file(
                      image!,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    )
                  : FlutterLogo(
                      size: 0,
                    ),
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 0, 0, 6),
                child: RaisedButton(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(7)),
                  onPressed: () async {
                    final pickedFile =
                        await picker.pickImage(source: ImageSource.camera);
                    //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      if (pickedFile != null) {
                        image = File(pickedFile.path);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
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
                    'Chụp ảnh',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        width: 350,
        child: RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  backgroundColor: Colors.green[100],
                  title: new Text(
                    'Create successful',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                );
              },
            );
          },
          color: Colors.blue[300],
          child: Text(
            'Create',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
