import 'package:chatty_apps/widgets/chatting_item.dart';
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
    final imageUrl = [
      'assets/images/pic_friend_1.png',
      'assets/images/pic_friend_3.png',
      'assets/images/profile_pic.png',
      'assets/images/pic_friend_2.png',
    ];
    final message = [
      'How are ya guys?',
      'Find here :P',
      'Thinking about how to deal with this client from hell...',
      'Love them',
    ];
    final time = [
      '2:30',
      '3:11',
      '22:08',
      '23:11',
    ];
    final isMyChat = [
      false,
      false,
      true,
      false,
    ];

    return Scaffold(
      backgroundColor: Color(0XFFEBF2F8),
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                // NOTE: HEADER
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
                // NOTE: HEADER END
                // NOTE: DISPLAY CHAT
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 139,
                  child: ListView.builder(
                    itemCount: imageUrl.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: (index == 0) ? 30 : 0,
                          bottom: (index == (imageUrl.length - 1)) ? 100 : 30),
                      child: ChattingItem(
                        imageUrl: imageUrl[index],
                        message: message[index],
                        time: time[index],
                        isMyChat: isMyChat[index],
                      ),
                    ),
                  ),
                ),
                // NOTE: DISPLAY CHAT END
              ],
            ),
            // NOTE: TEXT INPUT
            Container(
              height: 54,
              alignment: Alignment.bottomCenter,
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
            ),
            // NOTE: TEXT INPUT END
          ],
        ),
      ),
    );
  }
}
