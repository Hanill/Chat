import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String txt;

  const ChatMessage(
    this.txt, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        width: 638,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  child: Text("프"), //채팅 프로필 나오는 부분
                  radius: 40,
                ),
                Expanded(child: SizedBox()) //프로필 아래 여백
              ],
            ),
            SizedBox(
              width: 32, //프로필, 채팅 사이 여백
            ),
            Column(
              children: [
                Text(
                  "상대 이름",
                  style: TextStyle(
                    fontFamily: "KoreanFont",
                    fontSize: 24,
                    color: Color(0xff191919),
                  ),
                ),
                Stack(
                  children: [
                    ClipRRect(
                      //borderRadius: BorderRadius.circular(8.0),
                      child: Container(width: 408, color: Colors.blue),
                    ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 4,
                        top: 20,
                        child: Container(
                          width: 384,
                          child: Text(
                            txt,
                            style:
                            TextStyle(
                                fontFamily: "KoreanFont",
                                fontSize: 28,
                                color: Color(0xff000000)),
                          ),
                        ),
                      )
                  ],
                ),
                SizedBox(width: 24), //여백
              ],
            ),
          ],
        ),
      ),
    );
  }
}
