import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  createState() => CreatePageState();
}

class CreatePageState extends State<CreatePage> {
  File? image;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: new Text('Create Activity'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Name: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Identity card: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Date of birth: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Address: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Reason: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Price: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
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
                padding: EdgeInsets.fromLTRB(1, 5, 5, 10),
              ),
              Text(
                'Image: ',
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
                    'Get image',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
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
          color: Colors.blue[100],
          child: Text(
            'Create',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}