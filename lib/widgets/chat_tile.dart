import 'package:flutter/material.dart';
import 'package:chatty_apps/theme.dart';

class ChatTile extends StatelessWidget {
  final imageURL;
  final name;
  final textMessage;
  final recieveTime;

  ChatTile({this.imageURL, this.name, this.textMessage, this.recieveTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                style: unReadTextStyle,
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
    );
  }
}
