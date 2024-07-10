import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            size: 40,
            thumbPath:
                'https://thumbnail9.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/79db/8abf08a5aec51eaf2c77572800c0206726031d89d09c85d89641e8c04e4c.jpg',
            nickname: '개발하는가현',
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(imageUrl: 'https://picsum.photos/400/300');
  }

  Widget _infoCount() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(CupertinoIcons.heart, size: 20),
              SizedBox(width: 15),
              Icon(CupertinoIcons.chat_bubble, size: 20),
              SizedBox(width: 15),
              Icon(CupertinoIcons.paperplane, size: 20),
            ],
          ),
          Icon(CupertinoIcons.bookmark, size: 20),
        ],
      ),
    );
  }

  Widget infoDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '좋아요 150개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            "this is content \n this is content \n this is content \n this is content \n",
            prefixText: '개발하는가현',
            onPrefixTap: () {
              print('onPrefixTap');
            },
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
            expandText: '더보기',
            collapseText: '간략히 보기',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          '댓글 3개 모두 보기',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        '2일 전',
        style: TextStyle(color: Colors.grey, fontSize: 11),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(),
            SizedBox(
              height: 15,
            ),
            _image(),
            SizedBox(
              height: 15,
            ),
            _infoCount(),
            const SizedBox(
              height: 5,
            ),
            infoDescription(),
            const SizedBox(
              height: 5,
            ),
            _replyTextBtn(),
            const SizedBox(
              height: 2,
            ),
            _dateAgo(),
            /*
        _infoCount(),
        infoDescription(),
        _replyTextBtn(),
        _dateAgo(),*/
          ],
        ));
  }
}
