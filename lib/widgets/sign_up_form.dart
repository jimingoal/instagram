import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants/common_size.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey _formKey = GlobalKey();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwController = TextEditingController();
  TextEditingController _cpwController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _pwController.dispose();
    _cpwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(common_gap),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assets/images/insta_text_logo.png",
              scale: 0.8,
            ),
            TextFormField(
              controller: _emailController,
              cursorColor: Colors.black45,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[300],
                  ),
                  borderRadius: BorderRadius.circular(common_s_gap),
                ),
              ),
              validator: (text) {
                if (text.isNotEmpty && text.contains("@")) {
                  return null;
                } else {
                  return '정확한 이메일 주소를 입력해 주세요.';
                }
              },
            ),
            SizedBox(
              height: common_gap,
            ),
            TextFormField(
              controller: _pwController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(common_s_gap))),
              validator: (text) {
                if (text.isNotEmpty && text.length >= 4) {
                  return null;
                } else {
                  return '제대로 된 비밀를 입력해주세요.';
                }
              },
            ),
            SizedBox(
              height: common_gap,
            ),
            TextFormField(
              controller: _cpwController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(common_s_gap))),
              validator: (text) {
                if (text.isNotEmpty && _pwController.text == text) {
                  return null;
                } else {
                  return '입력된 값이 비밀번호와 일치하지 않습니다. 다시 입력해주세요.';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
