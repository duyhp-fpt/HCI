import 'package:flutter/material.dart';
import 'package:house_rent/model/charity.dart';

class ContentIntro extends StatelessWidget {
  final Charity charity;

  ContentIntro({Key? key, required this.charity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            charity.name,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[300]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Địa chỉ: ' + charity.address,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Sáng lập bởi: ' + charity.nameOrganization,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Chỉ tiêu: ' +
                charity.target +
                "/" +
                charity.totalPrice +
                " " +
                charity.uom,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Ngày tạo: 1/6/2021',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
