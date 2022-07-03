import 'package:facebook_home_page/data/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/post.dart';

class postWidget extends StatelessWidget {
  @override
  User? user;
  Post? post;
  postWidget(this.user, this.post);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user!.image!),
              radius: 20,
            ),
            Text(
              user!.name!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
            Text(
              'has updated her cover photo   ',
              style: TextStyle(fontSize: 10),
            ),
            Image.network(
              'https://e7.pngegg.com/pngimages/962/722/png-clipart-computer-icons-encapsulated-postscript-others-text-monochrome.png',
              fit: BoxFit.cover,
              height: 20,
              width: 20,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFBDBDBD),
              ),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(post!.image!), fit: BoxFit.cover)),
        ),
        Row(
          children: [
            Image.asset('assets/icons/like.png',
                height: 25, width: 25, fit: BoxFit.cover),
            Image.asset('assets/icons/love.png',
                height: 20, width: 20, fit: BoxFit.cover),
            Text('  400'),
            Spacer(),
            Text('${post!.noLikes!} likes')
          ],
        ),
      ],
    );
  }
}
