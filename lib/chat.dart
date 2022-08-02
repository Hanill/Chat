import 'package:chat/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Chat extends StatefulWidget {
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
      appBar: AppBar(
        title: Text("채팅방"),
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
                    onSurface: Colors.amberAccent,
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
    Logger().d(text);
    _textEditingController.clear();
    ChatMessage newChat = ChatMessage(text);
    setState(() {
      _chats.add(newChat);
    });
  }
}
