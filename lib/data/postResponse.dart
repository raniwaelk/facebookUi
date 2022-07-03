import 'package:facebook_home_page/data/post.dart';
import 'package:facebook_home_page/data/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostResponse {
  User? user;
  Post? post;
  PostResponse.fromJason(Map<String, dynamic> data) {
    user = User.fromJason(data['user']);
    post = Post.fromJason(data['post']);
  }
}
