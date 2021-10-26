import 'package:flutter/material.dart';
import 'package:house_rent/list_activity/createpro.dart';
import 'package:house_rent/model/activity.dart';

final List<ActivityManageProduct> listActivity =
    ActivityManageProduct.generateListActivity();

class ListProductActivity extends StatelessWidget {
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
                          (index + 1).toString() + "    ",
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text('Product Name: ' +
                              listActivity.elementAt(index).product),
                          Text('Quantity: ' +
                              listActivity.elementAt(index).quantity),
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
                          (index + 1).toString() + "    ",
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text('Product Name: ' +
                              listActivity.elementAt(index).product),
                          Text('Quantity: ' +
                              listActivity.elementAt(index).quantity),
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
                    return CreateProPage();
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
                'Create product activity',
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
