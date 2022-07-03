import 'package:facebook_home_page/data/postsData.dart';
import 'package:facebook_home_page/postWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: ListView(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/icons/camera.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 30,
                      width: 290,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(horizontal: 3),

                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(
                            color: Color(0xFFBDBDBD),
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        '   Search',
                      ),
                    ),
                    Image.asset(
                      'assets/icons/messenger.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const Text(
                      'Stories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Text('See Archeive  '),
                    Image.network(
                      'https://static.thenounproject.com/png/2354422-200.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(
                            color: Color(0xFFBDBDBD),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                      width: 150,
                      height: 220,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Add to your story',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(
                            color: Color(0xFFBDBDBD),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                      width: 150,
                      height: 220,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Add to your story',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(
                            color: Color(0xFFBDBDBD),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                              fit: BoxFit.cover)),
                      width: 150,
                      height: 220,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Add to your story',
                      ),
                    )
                  ],
                ),
              ),
              ...posts.map((e) {
                return postWidget(e.user!, e.post!);
              }).toList(),
              Row(
                children: [
                  Container(
                      height: 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Row(
                        children: [
                          Image.network(
                            'https://flyclipart.com/thumb2/facebook-like-button-transparent-background-744400.png',
                            height: 50,
                            width: 50,
                          ),
                          Text('Like')
                        ],
                      )),
                  Container(
                      height: 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Row(
                        children: [
                          Image.network(
                            'https://flyclipart.com/thumb2/comment-png-icon-free-download-654894.png',
                            height: 30,
                            width: 30,
                          ),
                          Text('Comment')
                        ],
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/home.png',
                            scale: 1,
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ))
                ],
              )
            ],
          )),
    );
  }
}
