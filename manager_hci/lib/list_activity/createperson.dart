import 'package:flutter/material.dart';

class CreatePerPage extends StatefulWidget {
  createState() => CreatePerPageState();
}

class CreatePerPageState extends State<CreatePerPage> {
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
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 40),
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
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 40),
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
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 40),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Product: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 40),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Price / Quantity: ',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 40),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Unit: ',
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
        ],
      ),
    );
  }
}
