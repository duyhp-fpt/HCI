import 'package:flutter/material.dart';
import 'package:house_rent/login/forgotpassword.dart';
import 'package:house_rent/screen/home/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Text('Đăng nhập'),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 400,
              height: 200,
              padding: EdgeInsets.all(10),
              // child: FlutterLogo(),
              child: Image.asset(
                ('assets/images/logoApp.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  labelText: 'Tên đăng nhập',
                  labelStyle: TextStyle(
                    color: Colors.blue[300],
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Mật khẩu',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Hiện/Ẩn',
                    style: TextStyle(
                      color: Colors.blue[300],
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                height: 50,
                width: 300,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  color: Colors.blue[200],
                  child: Text('Đăng nhập',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Container(
              height: 130,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     'New User? Sign Up',
                  //   ),
                  // ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgotPassword();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Quên mật khẩu',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
