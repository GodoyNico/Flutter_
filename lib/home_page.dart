import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Login to continue!',
              style: TextStyle(fontSize: 30),
            ),
          ),
          //Container Username
          Container(
              padding: EdgeInsets.all(16),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100], width: 1),
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.perm_identity,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              )),
          //Container Password
          Container(
              padding: EdgeInsets.all(16),
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100], width: 1),
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.vpn_key,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              )),
          Container(
              height: 18,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100], width: 1),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              )),
          InkWell(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange[900], Colors.deepOrange[300]]),
                border: Border.all(color: Colors.orange[300], width: 1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () => print('Logado'),
          ),
        ],
      ),
    );
  }
}
