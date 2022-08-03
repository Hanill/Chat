import 'package:chat/chat_message.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController _textEditingController = TextEditingController();

  List<ChatMessage> _chats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return _chats[index];
            },
            itemCount: _chats.length,
          )),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(hintText: "메세지를 입력하세요"),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSubmitted(_textEditingController.text);
                  },
                  style: TextButton.styleFrom(
                    //primary: Colors.black,
                    //글자색
                    disabledBackgroundColor: Colors.amberAccent,
                    //온프레스 값이 비어 있을 때 색상
                    backgroundColor: Colors.green,
                    shadowColor: Colors.black,
                    //그림자 색상
                    textStyle: TextStyle(
                        fontFamily: "KoreanFont", fontWeight: FontWeight.w400),
                    shape: BeveledRectangleBorder(),
                  ),
                  child: Text("전송"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textEditingController.clear();
    ChatMessage newChat = ChatMessage(text);
    setState(() {
      _chats.add(newChat);
    });
  }
}
