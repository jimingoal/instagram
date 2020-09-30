import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final index;
  Size size;

  Post(this.index);

  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;

    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$index/200/300',
      placeholder: (context, url) {
        return Container(
            height: size.height,
            width: size.width,
            child: Center(
                child: SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: CircularProgressIndicator())));
      },
      imageBuilder: (context, imageProvider) {
        return AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: imageProvider, fit: BoxFit.cover)),
          ),
        );
      },
    );
  }
}
