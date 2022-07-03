// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:facebook_home_page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height >
        MediaQuery.of(context).size.width) {
      return Scaffold(
        appBar: AppBar(),
        drawer: drawer(),
      );
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(child: drawer()),
      ),
    );
  }
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text('R')),
            accountName: Text('Ranai W. AlKilani'),
            accountEmail: Text('rania.w.alkilani@gmail.com')),
        const ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_forward),
          title: Text('Home'),
          subtitle: Text('Go to home'),
        ),
        const ListTile(
          leading: Icon(Icons.favorite),
          trailing: Icon(Icons.arrow_forward),
          title: Text('Favourite'),
          subtitle: Text('Go to favourite'),
        ),
        const ListTile(
          leading: Icon(Icons.perm_identity),
          trailing: Icon(Icons.arrow_forward),
          title: Text('Profile'),
          subtitle: Text('Go to profile'),
        )
      ],
    );
  }
}
