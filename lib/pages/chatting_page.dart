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
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(28),
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
                    ],
                  ),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    color: Color(0XFF29CB9E),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.call),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
