import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funz_eventz/model/profile_setting_model.dart';

import 'chat_page.dart';
import 'model/user.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);
  static const Color messagesC = Color(0xff485F8B);
  static const Color newMessagesC = Color(0xffA2B0C9);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<UserModel> userList = [];

  @override
  Widget build(BuildContext context) {
    if (userList.isEmpty) {
      _getUserList();
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(fontFamily: 'Jua', fontSize: 24),
                  ),
                  Text(
                    'You have 2 new messages',
                    style:
                        TextStyle(fontFamily: 'Quicksand_Bold', fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatPage(user: userList[index]),
                          ));
                        },
                        leading: GestureDetector(
                          onTap:() {
                        Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => ChatPage(user: userList[index],)));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/julies.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(userList[index].name,
                                        style: TextStyle(
                                            fontFamily: 'Jua',
                                            fontSize: 18,
                                            color: Messages.messagesC)),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Text(
                                          userList[index].email,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Jua',
                                              color: Messages.newMessagesC)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  _getUserList() {
    FirebaseFirestore.instance.collection("user").snapshots().listen((element) {
      for (var element in element.docs) {
        userList.add(UserModel.fromJson(element.data()));
      }
      setState(() {});
    });
  }
}
