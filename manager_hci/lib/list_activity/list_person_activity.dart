import 'package:flutter/material.dart';
import 'package:house_rent/list_activity/createperson.dart';
import 'package:house_rent/model/activity.dart';

final List<ActivityManagePeople> listActivity =
    ActivityManagePeople.generateListWithPeople();

class ListPersonActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text('List Activity of campaign'),
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listActivity.length,
          itemBuilder: (BuildContext context, int index) {
            if (listActivity.elementAt(index).status) {
              return Container(
                height: 50,
                color: Colors.green[200],
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          (index + 1).toString() + "  -  ",
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text('Name: ' + listActivity.elementAt(index).name),
                          Text('Price: ' +
                              listActivity.elementAt(index).quantity +
                              listActivity.elementAt(index).uom),
                          Text('Address: ' +
                              listActivity.elementAt(index).address),
                        ]),
                      ),
                      // Image.asset(listActivity.elementAt(index).image),
                    ]),
              );
            } else {
              return Container(
                height: 50,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          (index + 1).toString() + "  -  ",
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text('Name: ' + listActivity.elementAt(index).name),
                          Text('Price: ' +
                              listActivity.elementAt(index).quantity +
                              listActivity.elementAt(index).uom),
                          Text('Address: ' +
                              listActivity.elementAt(index).address),
                        ]),
                      ),
                      // Image.asset(listActivity.elementAt(index).image),
                    ]),
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
                    return CreatePerPage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Theme.of(context).primaryColor,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Create activity for person',
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
