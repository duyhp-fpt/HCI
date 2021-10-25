import 'package:flutter/material.dart';
import 'package:house_rent/model/activity.dart';
// import 'package:house_rent/list_activity/detail_activity.dart';
// import 'package:house_rent/model/activity.dart';

final List<ActivityManageProduct> listActivity =
    ActivityManageProduct.generateListActivity();

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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listActivity.length,
          itemBuilder: (BuildContext context, int index) {
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
                        // Text('Price: ' +
                        //     listActivity.elementAt(index).price +
                        //     listActivity.elementAt(index).uom),
                        // Text('Date: ' + listActivity.elementAt(index).date),
                      ]),
                    ),

                    // Image.asset(listActivity.elementAt(index).image),
                  ]),
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
