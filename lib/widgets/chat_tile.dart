import 'package:chatty_apps/pages/chatting_page.dart';
import 'package:flutter/material.dart';
import 'package:chatty_apps/theme.dart';

class ChatTile extends StatelessWidget {
  final imageURL;
  final name;
  final totalMember;
  final textMessage;
  final recieveTime;
  final bool isReaded;

  ChatTile(
      {this.imageURL,
      this.name,
      this.totalMember,
      this.textMessage,
      this.recieveTime,
      this.isReaded});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChattingPage(imageURL: imageURL, name: name, totalMember: totalMember,),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageURL,
              height: 55,
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  textMessage,
                  style: isReaded ? subTitleTextStyle : unReadTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              recieveTime,
              style: subTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
