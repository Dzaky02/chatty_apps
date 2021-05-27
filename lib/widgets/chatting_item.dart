import 'package:chatty_apps/theme.dart';
import 'package:flutter/material.dart';

class ChattingItem extends StatelessWidget {
  final imageUrl;
  final message;
  final time;
  final isMyChat;

  ChattingItem({this.imageUrl, this.message, this.time, this.isMyChat});

  @override
  Widget build(BuildContext context) {
    Widget friendChat() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0XFFE1E7EB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    style: chatMessageTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: chatTimeTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget myChat() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    message,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    style: chatMessageTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: chatTimeTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      );
    }

    return (isMyChat) ? myChat() : friendChat();
  }
}
