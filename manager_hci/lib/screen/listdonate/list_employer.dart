import 'package:flutter/material.dart';
import 'package:house_rent/model/donate.dart';
import 'package:house_rent/screen/listdonate/createemp.dart';

final List<Employee> listDonate = Employee.generateListEmployee();

class ListDonate extends StatelessWidget {
  // final Donate donate;
  // const ListDonate({Key? key, required this.donate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text('List Employer'),
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listDonate.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(listDonate.elementAt(index).id.toString()),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Column(children: [
                          Text('UserName: ' +
                              listDonate.elementAt(index).userName),
                          Text('Password: ' +
                              listDonate.elementAt(index).password),
                          Text('Phone Number: ' +
                              listDonate.elementAt(index).phoneNumber),
                        ]),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.red[200],
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text('Delete'),
                )
              ],
            );
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
                    return CreateEmpPage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              // primary: Theme.of(context).primaryColor,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Create employee',
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
    // bottomNavigationBar: CustomBottomNavigationBar(),
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ListDonate();
          },
        ),
      );
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ListDonate();
          },
        ),
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Employee"),
    content: Text("Do you want to continue deleting this activity?"),
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
