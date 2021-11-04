import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'extras/colors.dart';

class ProfilePage2 extends StatefulWidget {
  const ProfilePage2({Key? key}) : super(key: key);

  @override
  State<ProfilePage2> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage2> {
  late double screenWidth;

  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Sharon Rock"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                margin: EdgeInsets.only(
                    top: 30,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.06),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.08,
                          margin: EdgeInsets.only(
                              left: screenWidth * 0.03,
                              right: 0.02 * screenWidth,
                              top: 8,
                              bottom: 8),
                          width: screenWidth * 0.14,
                          decoration: BoxDecoration(
                            color: CColors.profileHelpContainer,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Image.asset(
                            'assets/images/help_button.png',
                            width: 0.2 * screenWidth,
                            height: 0.2 * screenHeight,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Help',
                          style: TextStyle(
                              color: CColors.vendorButtonsC,
                              fontSize: 14,
                              fontFamily: 'Quicksand_Bold'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/help_right.png',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.02,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.06),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.08,
                          margin: EdgeInsets.only(
                              left: screenWidth * 0.03,
                              right: 0.02 * screenWidth,
                              top: 8,
                              bottom: 8),
                          width: screenWidth * 0.14,
                          decoration: BoxDecoration(
                            color: CColors.profileHelpContainer,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Image.asset(
                            'assets/images/website.png',
                            width: 0.2 * screenWidth,
                            height: 0.2 * screenHeight,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'https://www.mywebsite.com',
                          style: TextStyle(
                              color: CColors.vendorButtonsC,
                              fontSize: 12,
                              fontFamily: 'Quicksand_Bold'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/help_right.png',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.02,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.06),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.08,
                          margin: EdgeInsets.only(
                              left: screenWidth * 0.03,
                              right: 0.02 * screenWidth,
                              top: 8,
                              bottom: 8),
                          width: screenWidth * 0.14,
                          decoration: BoxDecoration(
                            color: CColors.profileHelpContainer,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Image.asset(
                            'assets/images/at.png',
                            width: 0.2 * screenWidth,
                            height: 0.2 * screenHeight,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'myemail@example.com',
                          style: TextStyle(
                              color: CColors.vendorButtonsC,
                              fontSize: 12,
                              fontFamily: 'Quicksand_Bold'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/help_right.png',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('General',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Quicksand_Bold',
                              color: CColors.profileHelpText)),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.profilePageContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Profile Setting',
                                      style: TextStyle(
                                          color: CColors.vendorButtonsC,
                                          fontSize: 14,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                    Text(
                                      'Update and modify your profile',
                                      style: TextStyle(
                                        color: CColors.dHaveAnAccount,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.profilePageContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Security',
                                      style: TextStyle(
                                          color: CColors.vendorButtonsC,
                                          fontSize: 14,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                    Text(
                                      'Change your password',
                                      style: TextStyle(
                                          color: CColors.dHaveAnAccount,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 30,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.profilePageContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notifications',
                                      style: TextStyle(
                                          color: CColors.vendorButtonsC,
                                          fontSize: 14,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                    Text(
                                      'Change your notification settings',
                                      style: TextStyle(
                                          color: CColors.dHaveAnAccount,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.07),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Appearance',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Quicksand_Bold',
                              color: CColors.profileHelpText)),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.appearanceContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Theme',
                                      style: TextStyle(
                                          color: CColors.vendorButtonsC,
                                          fontSize: 14,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                    Text(
                                      'System',
                                      style: TextStyle(
                                          color: CColors.dHaveAnAccount,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.appearanceContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Seasonal appearance',
                                      style: TextStyle(
                                          color: CColors.vendorButtonsC,
                                          fontSize: 14,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                    Text(
                                      'Default',
                                      style: TextStyle(
                                          color: CColors.dHaveAnAccount,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.appearanceContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notifications',
                                      style: TextStyle(
                                          color: CColors.vendorButtonsC,
                                          fontSize: 14,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                    Text(
                                      'Change your notification settings',
                                      style: TextStyle(
                                          color: CColors.dHaveAnAccount,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand_Bold'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.07, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Quicksand_Bold',
                              color: CColors.aboutContainers)),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.aboutContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      color: CColors.vendorButtonsC,
                                      fontSize: 13,
                                      fontFamily: 'Quicksand_Bold'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: screenWidth * 0.06,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: screenHeight * 0.08,
                                  margin: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: 0.02 * screenWidth,
                                      top: 8,
                                      bottom: 8),
                                  width: screenWidth * 0.14,
                                  decoration: BoxDecoration(
                                    color: CColors.aboutContainers,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: Image.asset(
                                    'assets/images/help_button.png',
                                    width: 0.2 * screenWidth,
                                    height: 0.2 * screenHeight,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Terms of Service',
                                  style: TextStyle(
                                      color: CColors.vendorButtonsC,
                                      fontSize: 13,
                                      fontFamily: 'Quicksand_Bold'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/help_right.png',
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: screenHeight * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
