import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final index;

  Post(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      height: 100,
    );
  }
}