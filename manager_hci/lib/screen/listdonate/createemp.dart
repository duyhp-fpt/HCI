import 'package:flutter/material.dart';
import 'package:house_rent/screen/listdonate/list_employer.dart';

class CreateEmpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: new Text('Create Employer'),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 20, 5, 40),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Employee Name: ',
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
                      labelText: 'User Name: ',
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
                      labelText: 'Password: ',
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
                      labelText: 'Phone Number: ',
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ListDonate();
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
                        'Create Employee successful',
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
        ],
      ),
    );
  }
}
