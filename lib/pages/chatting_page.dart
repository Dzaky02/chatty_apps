import 'package:flutter/material.dart';
import 'package:chatty_apps/theme.dart';

class ChattingPage extends StatelessWidget {
  final imageURL;
  final name;
  final totalMember;

  ChattingPage({
    this.imageURL,
    this.name,
    this.totalMember,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(26),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    imageURL,
                    width: 55,
                    height: 55,
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
                        '$totalMember members',
                        style: unReadTextStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0XFF29CB9E),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.call),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.only(
                bottom: 30,
                left: 30,
                right: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(16),
                        hintStyle: TextStyle(
                          color: Color(0XFF999999),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                        counterStyle: TextStyle(
                          color: Color(0XFF505C6B),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                        hintText: 'Type message ...',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/btn_send.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
