import 'package:flutter/material.dart';
import 'package:instagram/widgets/fade_stack.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int selectedForm = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          FadeStack(selectedForm),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              color: Colors.white,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    if (selectedForm == 0) {
                      selectedForm = 1;
                    } else {
                      selectedForm = 0;
                    }
                  });
                },
                child: RichText(
                  text: TextSpan(
                      text: selectedForm == 0
                          ? "Don't have an account? "
                          : 'Already have an account? ',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      children: [
                        TextSpan(
                          text: selectedForm == 0 ? 'Sign Up' : 'Sign in',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
