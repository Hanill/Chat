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
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.amberAccent,
            child: Text("프"), //채팅 프로필 나오는 부분
          ),
          SizedBox(
            width: 32, //여백
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "이름 들어가는 부분",
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      //fontSize: 24,
                      color: Color(0xff191919)),
                ),
                Text(txt),
              ],
            ),
          )
        ],
      ),
    );
  }
}
