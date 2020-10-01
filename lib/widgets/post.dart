import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants/common_size.dart';
import 'package:instagram/widgets/my_progress_indicator.dart';

class Post extends StatelessWidget {
  final index;
  Size size;

  Post(this.index);

  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;

    return Column(
      children: [
        _postHeader(),
        _postImage(),
      ],
    );
  }

  Widget _postHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(common_xxs_gap),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/100',
              width: avatar_size,
              height: avatar_size,
            ),
          ),
        ),
        Expanded(child: Text('username')),
        IconButton(icon: Icon(Icons.more_horiz), onPressed: null)
      ],
    );
  }

  CachedNetworkImage _postImage() {
    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$index/200/300',
      placeholder: (context, url) {
        return MyProgressIndicator(
          containerSize: size.width,
        );
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
