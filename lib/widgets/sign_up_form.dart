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

  @override
  void dispose() {
    _emailController.dispose();
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
            TextField(),
            TextField(),
          ],
        ),
      ),
    );
  }
}
