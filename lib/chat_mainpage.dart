import 'package:flutter/material.dart';

class ChatMain extends StatelessWidget {
  const ChatMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0.0,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                },
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 35,
                child: Text("프"), //채팅 프로필 나오는 부분
              ),
              SizedBox(width: 32), //여백
              Text(
                "채팅방",
                style: TextStyle(
                  fontFamily: "KoreanFont",
                  fontSize: 40,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
