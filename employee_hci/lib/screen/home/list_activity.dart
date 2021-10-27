import 'package:employee_hci/model/activity.dart';
import 'package:flutter/material.dart';

final List<ActivityManageProduct> listActivity =
    ActivityManageProduct.generateListActivity();

class ListProductActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
