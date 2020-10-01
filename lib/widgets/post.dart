import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants/common_size.dart';
import 'package:instagram/widgets/my_progress_indicator.dart';
import 'package:instagram/widgets/rounded_avatar.dart';

class Post extends StatelessWidget {
  final index;
  Size size;

  Post(this.index);

  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _postHeader(),
        _postImage(),
        _postActions(),
        Padding(
          padding: const EdgeInsets.only(left: common_gap),
          child: Text('12000 likes',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }

  Widget _postHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(common_xxs_gap),
          child: RoundedAvatar(),
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

  Widget _postActions() {
    return Row(
      children: [
        IconButton(
          icon: ImageIcon(AssetImage('assets/images/bookmark.png')),
          onPressed: null,
          color: Colors.black87
        ),
        IconButton(
          icon: ImageIcon(AssetImage('assets/images/comment.png')),
          onPressed: null,
          color: Colors.black87
        ),
        IconButton(
          icon: ImageIcon(AssetImage('assets/images/direct_message.png')),
          onPressed: null,
          color: Colors.black87
        ),
        Spacer(),
        IconButton(
          icon: ImageIcon(AssetImage('assets/images/heart.png')),
          onPressed: null,
          color: Colors.black87
        ),
      ],
    );
  }
}
