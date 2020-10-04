import 'package:flutter/material.dart';
import 'package:instagram/screens/auth_screen.dart';

import 'constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      theme: ThemeData(primarySwatch: white),
    );
  }
}
