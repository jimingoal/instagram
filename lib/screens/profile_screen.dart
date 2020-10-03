import 'package:flutter/material.dart';
import 'package:instagram/constants/common_size.dart';
import 'package:instagram/constants/screen_size.dart';
import 'package:instagram/widgets/profile_body.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double menuWidth = size.width / 2;
  MenuStatus _menuStatus = MenuStatus.closed;
  double bodyXPos = 0;
  double menuXPos = size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Stack(
          children: [
            AnimatedContainer(
                duration: Duration(milliseconds: 300),
                transform: Matrix4.translationValues(bodyXPos, 0, 0),
                child: ProfileBody(onMenuChanged: () {
                  setState(() {
                    _menuStatus = (_menuStatus == MenuStatus.closed)
                        ? MenuStatus.opened
                        : MenuStatus.closed;

                    switch (_menuStatus) {
                      case MenuStatus.opened:
                        print('MenuStatus.opened');
                        bodyXPos = -menuWidth;
                        menuXPos = menuWidth;
                        break;
                      case MenuStatus.closed:
                        print('MenuStatus.closed');
                        bodyXPos = 0
                        menuXPos = size.width;
                        break;
                    }
                  });
                })),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              transform: Matrix4.translationValues(menuXPos, 0, 0),
              child: Container(
                color: Colors.cyan,
              ),
            )
          ],
        ));
  }
}

enum MenuStatus { opened, closed }
