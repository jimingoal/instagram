import 'package:flutter/material.dart';
import 'package:instagram/constants/common_size.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appBar(),
            _username(),
            _userBio(),
            _editProfileBtn(),
          ],
        ),
      ),
    );
  }

  Row _appBar() {
    return Row(
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
    );
  }

  Widget _username() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        'username',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _userBio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        'this is what I believe',
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _editProfileBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: SizedBox(
        height: 24,
        child: OutlineButton(
          onPressed: () {},
          child: Text('Edit Profile'),
          borderSide: BorderSide(color: Colors.black45),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
        ),
      ),
    );
  }
}
