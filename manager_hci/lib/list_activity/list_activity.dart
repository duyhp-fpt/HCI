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
        title: Text(
          'Danh sách mua',
        ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Text('Tên sản phẩm: ' +
                            listActivity.elementAt(index).product),
                        Text('Số lượng cần mua: ' +
                            listActivity.elementAt(index).quantity +
                            ' ' +
                            listActivity.elementAt(index).uom),
                        Text('Số lượng đã mua: ' +
                            listActivity.elementAt(index).quantitybought +
                            ' ' +
                            listActivity.elementAt(index).uom),
                      ]),
                    ),
                    Text(
                      'Đã hoàn\nthành',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    // Image.asset(listActivity.elementAt(index).image),
                  ],
                ),
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tên sản phẩm: ' +
                                      listActivity.elementAt(index).product),
                                  Text('Số lượng cần mua: ' +
                                      listActivity.elementAt(index).quantity +
                                      ' ' +
                                      listActivity.elementAt(index).uom),
                                  Text('Số lượng đã mua: ' +
                                      listActivity
                                          .elementAt(index)
                                          .quantitybought +
                                      ' ' +
                                      listActivity.elementAt(index).uom),
                                ]),
                          ),
                          // Image.asset(listActivity.elementAt(index).image),
                        ]),
                  ),
                  RaisedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: Text(
                      'Cập nhật',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red[200],
                  ),
                ],
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
              // primary: Theme.of(context).primaryColor,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Thêm sản phần cần mua',
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

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ListProductActivity(),
        ),
      );
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ListProductActivity(),
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
              'Cập nhật số lượng thành công',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          );
        },
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Thay đổi số lượng cần mua"),
    content: TextField(
      style: TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        labelText: 'Số lượng cần mua: ',
        labelStyle: TextStyle(
          color: Colors.blue[300],
          fontSize: 20,
        ),
      ),
    ),
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
