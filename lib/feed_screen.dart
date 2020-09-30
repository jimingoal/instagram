import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        title: Center(
          child: Text(
            'instagram',
            style: TextStyle(fontFamily: 'VeganStyle', color: Colors.black87),
          ),
        ),
        actions: [ImageIcon(AssetImage('assets/images/actionbar_camera.png'))],
      ),
      body: ListView.builder(
        itemBuilder: feedListBuilder,
        itemCount: 20,
      ),
    );
  }

  Widget feedListBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      height: 100,
    );
  }
}
