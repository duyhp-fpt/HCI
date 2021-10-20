import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: new AppBar(
        title: new Text('Profile'),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        alignment: Alignment.center,
        child: CircleAvatar(
          maxRadius: 75,
          backgroundImage: AssetImage('assets/images/avatar.jpg'),
        ),
      ),
    );
  }
}
