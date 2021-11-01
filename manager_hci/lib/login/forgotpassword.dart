import 'package:flutter/material.dart';
import 'package:house_rent/login/login.dart';
import 'package:house_rent/screen/home/home.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Text('Forgot password'),
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
              padding: EdgeInsets.all(15),
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
                  labelText: 'User Name',
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
                      labelText: 'Phone number',
                      labelStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Show',
                //     style: TextStyle(
                //       color: Colors.blue[300],
                //       fontSize: 17,
                //     ),
                //   ),
                // ),
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
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  color: Colors.blue[200],
                  child: Text('Send request to admin',
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
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Back to sign in',
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
