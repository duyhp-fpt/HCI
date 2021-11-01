import 'dart:io';
import 'package:flutter/material.dart';
import 'package:house_rent/screen/home/home.dart';
import 'package:image_picker/image_picker.dart';

class CreateCPPage extends StatefulWidget {
  createState() => CreateCPPageState();
}

class CreateCPPageState extends State<CreateCPPage> {
  File? image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: new Text('Tạo chiến dịch mới'),
        backgroundColor: Colors.blue[100],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Tên chiến dịch : ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Địa chỉ : ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Tên người tạo / tên tổ chức: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Mô tả : ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Chỉ tiêu : ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Đơn vị: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Ngày tạo: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(1, 5, 5, 15),
                    ),
                    Text(
                      'Ảnh: ',
                      style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
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
                      padding: const EdgeInsets.fromLTRB(1, 0, 0, 10),
                      child: RaisedButton(
                        color: Colors.blue[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(7)),
                        onPressed: () async {
                          final pickedFile = await picker.pickImage(
                              source: ImageSource.gallery);
                          //File image = await ImagePicker.pickImage(source: ImageSource.gallery);
                          setState(() {
                            if (pickedFile != null) {
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
                                      'Chọn ảnh thành công',
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
                          'Chọn ảnh',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        width: 350,
        child: RaisedButton(
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
                    'Tạo chiến dịch thành công',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                );
              },
            );
          },
          color: Colors.blue[100],
          child: Text(
            'Tạo',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
