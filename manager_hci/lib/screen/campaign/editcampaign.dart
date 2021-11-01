import 'dart:io';
import 'package:flutter/material.dart';
import 'package:house_rent/model/charity.dart';
import 'package:house_rent/screen/home/home.dart';
import 'package:image_picker/image_picker.dart';

class EditCampaign extends StatefulWidget {
  final Charity charity;
  EditCampaign({Key? key, required this.charity}) : super(key: key);
  @override
  State<EditCampaign> createState() => _EditCampaignState();
}

class _EditCampaignState extends State<EditCampaign> {
  File? image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: new Text('Cập nhật thông tin chiến dịch'),
        backgroundColor: Colors.blue[100],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController()
                      ..text = widget.charity.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Tên chiến dịch: ',
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
                    enabled: false,
                    controller: TextEditingController()
                      ..text = widget.charity.address,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Địa chỉ: ',
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
                    controller: TextEditingController()
                      ..text = widget.charity.nameOrganization,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Sáng lập bởi: ',
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
                    enabled: false,
                    controller: TextEditingController()
                      ..text = widget.charity.totalPrice + widget.charity.uom,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Chỉ tiêu: ',
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
                    maxLines: null,
                    controller: TextEditingController()
                      ..text = widget.charity.description,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Mô tả: ',
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
                      'Ảnh mới: ',
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
            height: 10,
          ),
          SizedBox(
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
                        'Updated campaign successful',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    );
                  },
                );
              },
              color: Colors.blue[100],
              child: Text(
                'Cập nhật',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
