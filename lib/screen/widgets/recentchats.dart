import 'package:appmessage/models/message_models.dart';
import 'package:appmessage/models/user.dart';
import 'package:appmessage/screen/chatscreen.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return ChatScreen(user: chat.sender);
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(chat.sender.ImageUrl),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.sender.name,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            chat.time,
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          chat.unread
                              ? Container(
                                  alignment: Alignment.center,
                                  width: 40.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  child: Text(
                                    'New',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : SizedBox.shrink()
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
