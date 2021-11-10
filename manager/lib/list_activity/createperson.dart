import 'package:flutter/material.dart';

class CreatePerPage extends StatefulWidget {
  createState() => CreatePerPageState();
}

class CreatePerPageState extends State<CreatePerPage> {
  String dropdownValue = 'Tiền';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: new Text('Thêm vào danh sách người nhận'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Tên: ',
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
                      labelText: 'Địa chỉ: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
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
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Tên sản phẩm: ',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                if (dropdownValue == 'Không phải tiền')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Số lượng: ',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                if (dropdownValue == 'Tiền')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Số tiền: ',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                if (dropdownValue == 'Tiền')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 20),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Đơn vị: VND',
                        labelStyle: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                if (dropdownValue == 'Không phải tiền')
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
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: Colors.green[300],
                      title: new Text(
                        'Thêm vào danh sách thành công',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    );
                  },
                );
              },
              color: Colors.blue[300],
              child: Text(
                'Thêm',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
