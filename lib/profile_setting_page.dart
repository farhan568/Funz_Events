import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:funz_eventz/model/profile_setting_model.dart';
import 'package:funz_eventz/profile_textfields_controller.dart';
import 'package:image_picker/image_picker.dart';

import 'extras/colors.dart';

class ProfileSettingPage extends StatefulWidget {
  const ProfileSettingPage({Key? key}) : super(key: key);

  @override
  State<ProfileSettingPage> createState() => _ProfileSettingPageState();
}

class _ProfileSettingPageState extends State<ProfileSettingPage> {
  File? _image;
  final auth = FirebaseAuth.instance;
  String imageUrl = "";
  late String userId;
  ImagePicker picker = ImagePicker();
  late double screenHeight;
  late dynamic screenWidth;
  TextEditingController _nameFieldController = TextEditingController();
  TextEditingController _emailFieldController = TextEditingController();
  TextEditingController _userNameFieldController = TextEditingController();
  TextEditingController _bioFieldController = TextEditingController();
  TextEditingController _websiteFieldController = TextEditingController();
  TextEditingController _phoneFieldController = TextEditingController();
  TextEditingController _genderFieldController = TextEditingController();
  late UserSettingModel userModel ;

  @override
  void initState(){
    _getFieldData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    _getUserImage();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    imageUrl == ""
                        ? InkWell(
                            onTap: () async {
                              await _imgFromGallery();
                            },
                            child: Image.asset(
                              'assets/images/Profile.png',
                              width: screenWidth * 0.35,
                            ),
                          )
                        : InkWell(
                            onTap: () async {
                              await _imgFromGallery();
                            },
                            child: Image.network(
                              imageUrl,
                              width: screenWidth * 0.35,
                            ),
                          ),
                    Text(" Change Profile Picture",
                        style: TextStyle(
                            color: CColors.vendorButtonsC,
                            fontFamily: 'Jua',
                            fontSize: 18)),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: screenWidth * 0.03, right: screenWidth * 0.03),
                      child: Column(
                        children: [
                          TextField(
                            controller: _nameFieldController,
                            // controller: Text,
                            style: TextStyle(
                              fontFamily: 'Quicksand_bold',
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Name'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                          TextField(
                            controller: _userNameFieldController,
                            style: TextStyle(
                                fontFamily: 'Quicksand_bold', fontSize: 14),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Username'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                          TextField(
                            controller: _bioFieldController,
                            style: TextStyle(
                                fontFamily: 'Quicksand_bold', fontSize: 14),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Bio'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                          TextField(
                            enabled: false,
                            controller: _emailFieldController,
                            style: TextStyle(
                                fontFamily: 'Quicksand_bold', fontSize: 14),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Email'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                          TextField(
                            controller: _phoneFieldController,
                            style: TextStyle(
                                fontFamily: 'Quicksand_bold', fontSize: 14),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Phone'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                          TextField(
                            controller: _genderFieldController,
                            style: TextStyle(
                                fontFamily: 'Quicksand_bold', fontSize: 14),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Gender'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                          TextField(
                            controller: _websiteFieldController,
                            style: TextStyle(
                                fontFamily: 'Quicksand_bold', fontSize: 14),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CColors.profileSettingInputBorder,
                                  ),
                                ),
                                label: Text('Website'),
                                labelStyle: TextStyle(
                                  color: CColors.profileSettingLabel,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: MaterialButton(
                          onPressed: () {
                            _updateFieldsData();
                          },
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.2,
                              vertical: screenHeight * 0.03),
                          color: CColors.saveButton,
                          child: Text('Save')),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  //From Gallery
  Future _imgFromGallery() async {
    final image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
      _uploadImage();
    });
  }

  _getUserImage() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    try {
      imageUrl = await FirebaseStorage.instance
          .ref('User/$userId')
          .child("Profile_Pic")
          .getDownloadURL();
      setState(() {});
    } on FirebaseException catch (e) {
      imageUrl = "";
      print(e.toString());
    }
  }

  _uploadImage() async {
    //upload
    final userId = FirebaseAuth.instance.currentUser!.uid;
    try {
      await FirebaseStorage.instance
          .ref('User/$userId')
          .child("Profile_Pic")
          .putFile(_image!);
      print("Upload Successful");
    } on FirebaseException catch (e) {
      print(e.toString());
    }

    //Download

    try {
      imageUrl = await FirebaseStorage.instance
          .ref('User/$userId')
          .child("Profile_Pic")
          .getDownloadURL();
      print(imageUrl);
      setState(() {});
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }
  // Firebase Fields
  _getFieldData() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    try {
        await  FirebaseFirestore.instance.collection('user').doc(userId).get().then((value) async {
        userModel = UserSettingModel.fromJson(value.data()!);
        print( value.data().toString() );
        _nameFieldController.text = userModel.firstName.toString();
        _emailFieldController.text = userModel.email.toString();
        _userNameFieldController.text = userModel.userName.toString();
        _bioFieldController.text = userModel.bio.toString();
        _phoneFieldController.text = userModel.phone.toString();
        _genderFieldController.text = userModel.gender.toString();
        _websiteFieldController.text = userModel.website.toString();
      });
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }
  _updateFieldsData() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;
        userModel = UserSettingModel( email: _emailFieldController.text ,
      firstName: _nameFieldController.text ,
      bio:_bioFieldController.text ,
      gender: _genderFieldController.text ,
      phone: _phoneFieldController.text ,
      userName: _userNameFieldController.text,
        website: _websiteFieldController.text,
        );
        try {
          await FirebaseFirestore.instance.collection('user').doc(userId).set(
              userModel.toJson());
         print ( "Record  Updated Successfully" );
        }on FirebaseException catch (e){
          print(e.toString());
        }
  }


}
