import 'package:appmessage/models/message_models.dart';
import 'package:appmessage/screen/widgets/category_selectory.dart';
import 'package:appmessage/screen/widgets/favoritecontact.dart';
import 'package:appmessage/screen/widgets/recentchats.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScree extends StatefulWidget {
  HomeScree({Key? key}) : super(key: key);

  @override
  _HomeScreeState createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
          ),
        ],
        title: Center(
          child: Text(
            'Chat',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          CategorySlectory(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: [
                  FavouriteContact(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
