import 'package:flutter/material.dart';
import 'package:instagram/widgets/rounded_avatar.dart';

class Comment extends StatelessWidget {
  final bool showImage;
  final String userName;
  final String text;
  final DateTime dateTime;

  Comment({
    Key key,
    this.showImage = true,
    @required this.userName,
    @required this.text,
    this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showImage) RoundedAvatar(size: 20),
        if (showImage)
          SizedBox(
            width: 10,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: userName,
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' '),
                TextSpan(
                    text: text,
                    style: TextStyle(
                      color: Colors.black87,
                    )),
              ]),
            ),
            if (dateTime != null)
              Text(
                dateTime.toIso8601String(),
                style: TextStyle(color: Colors.grey[400], fontSize: 10),
              )
          ],
        ),
      ],
    );
  }
}
