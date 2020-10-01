import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Text(
                'The coding Papa',
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
