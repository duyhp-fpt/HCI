import 'package:flutter/material.dart';
import 'package:house_rent/list_activity/list_activity.dart';
import 'package:house_rent/list_activity/list_person_activity.dart';
import 'package:house_rent/model/charity.dart';
import 'package:house_rent/screen/campaign/editcampaign.dart';
import 'package:house_rent/screen/detail/widget/about.dart';
import 'package:house_rent/screen/detail/widget/content_intro.dart';
import 'package:house_rent/screen/detail/widget/detail_app_bar.dart';
import 'package:house_rent/screen/listdonate/list_employer.dart';

class DetailPage extends StatelessWidget {
  final Charity charity;
  const DetailPage({Key? key, required this.charity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(charity: charity),
            SizedBox(height: 20),
            ContentIntro(charity: charity),
            SizedBox(height: 10),
            About(
              charity: charity,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListDonate(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).canvasColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Danh sách cộng tác viên',
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListProductActivity(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: Theme.of(context).canvasColor,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Danh sách\ mua',
                        style: TextStyle(
                            color: Colors.blue[300],
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListPersonActivity(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: Theme.of(context).canvasColor,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Danh sách hỗ trợ ',
                        style: TextStyle(
                            color: Colors.blue[300],
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditCampaign(charity: charity),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).canvasColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Cập nhật thông tin chiến dịch',
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // CharityInfo(),
            // SizedBox(height: 20),
            SizedBox(height: 25),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8)),
            //       primary: Theme.of(context).primaryColor,
            //     ),
            //     child: Container(
            //       alignment: Alignment.center,
            //       padding: EdgeInsets.symmetric(vertical: 15),
            //       child: Text(
            //         'Donate Now',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
