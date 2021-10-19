import 'package:flutter/material.dart';
import 'package:house_rent/model/activity.dart';

final List<Activity> listActivity = Activity.generateListPayment();

class ListActivity extends StatelessWidget {
  // final Donate donate;
  // const ListDonate({Key? key, required this.donate}) : super(key: key);
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
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listActivity.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 80,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(listActivity.elementAt(index).id.toString()),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Text('Product Name: ' +
                          listActivity.elementAt(index).product),
                      Text('Quantity: ' +
                          listActivity.elementAt(index).quantity),
                      Text('Price: ' +
                          listActivity.elementAt(index).price +
                          listActivity.elementAt(index).uom),
                      Text('Date: ' + listActivity.elementAt(index).date),
                    ]),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
    // bottomNavigationBar: CustomBottomNavigationBar(),
  }
}
