import 'package:chatty_apps/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty_apps/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: userNameTextStyle,
                ),
                Text(
                  'Travel Freelancer',
                  style: userBioTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageURL: 'assets/images/pic_friend_1.png',
                        name: 'Joshuer',
                        textMessage: 'Sorry, you’re not my ty...',
                        recieveTime: 'Now',
                        isReaded: false,
                      ),
                      ChatTile(
                        imageURL: 'assets/images/pic_friend_2.png',
                        name: 'Gabriella',
                        textMessage: 'I saw it clearly and mig...',
                        recieveTime: '2:30',
                        isReaded: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageURL: 'assets/images/icon_group_1.png',
                        name: 'Jakarta Fair',
                        textMessage: 'Why does everyone ca...',
                        recieveTime: '11:11',
                        isReaded: true,
                      ),
                      ChatTile(
                        imageURL: 'assets/images/icon_group_2.png',
                        name: 'Angga',
                        textMessage: 'Here here we can go...',
                        recieveTime: '7:11',
                        isReaded: false,
                      ),
                      ChatTile(
                        imageURL: 'assets/images/icon_group_3.png',
                        name: 'Bentley',
                        textMessage: 'The car which does not...',
                        recieveTime: '7:11',
                        isReaded: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
