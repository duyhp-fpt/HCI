import 'package:employee_hci/model/activity.dart';
import 'package:employee_hci/screen/activity/createactivity.dart';
import 'package:employee_hci/screen/home/custom_app_bar.dart';
import 'package:employee_hci/screen/home/home.dart';
import 'package:flutter/material.dart';

class HomePage_2 extends StatelessWidget {
  int i = 0;
  final List<ActivityManagePeople> listActivity =
      ActivityManagePeople.generateListWithPeople();
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
                'Type of activity',
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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listActivity.length,
          itemBuilder: (BuildContext context, int index) {
            if (!listActivity.elementAt(index).status) {
              i++;
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
                          i.toString() + "    ",
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text('Name: ' + listActivity.elementAt(index).name),
                          Text(
                            'Address: ' + listActivity.elementAt(index).address,
                          ),
                          Text('Price: ' +
                              listActivity.elementAt(index).quantity +
                              listActivity.elementAt(index).uom),
                        ]),
                      ),
                      // Image.asset(listActivity.elementAt(index).image),
                    ]),
              );
            } else {
              index = index - 1;
              return Container(
                height: 0,
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
                    return CreatePage();
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
                'Create external activity',
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
