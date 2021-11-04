import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funz_eventz/model/user.dart';
import 'package:funz_eventz/widget/new_message_widget.dart';
import 'package:funz_eventz/widget/profile_header_widget.dart';

class ChatPage extends StatefulWidget {
  UserModel user;

   ChatPage({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.blue,
    body: SafeArea(
      child: Column(
        children: [
          ProfileHeaderWidget(name: widget.user.name),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
             // child: MessagesWidget(idUser: widget.user.firstName),
            ),
          ),
          NewMessageWidget(user: widget.user)
        ],
      ),
    ),
  );



}