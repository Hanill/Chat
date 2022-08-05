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
                onPressed: () {},
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
              onPressed: () {},
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
                SizedBox(
                  width: 104,
                  height: 104,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffF1F1F5),
                    ),
                    child: Text(""),
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: SizedBox(
                    height: 104,
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        border: InputBorder.none, //textfield 밑에 파란선 제거
                        hintText: "메시지를 입력하세요",
                        hintStyle: TextStyle(
                            fontFamily: "KoreanFont",
                            fontSize: 28,
                            color: Color(0xff767676)),
                      ),
                      style: TextStyle(fontFamily: "KoreanFont", fontSize: 28),
                      onSubmitted: _handleSubmitted,
                    ),
                  ),
                ),
                SizedBox(
                  width: 104,
                  height: 104,
                  child: TextButton(
                    onPressed: () {
                      _handleSubmitted(_textEditingController.text);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff909090),
                    ),
                    child: Text(""),
                  ),
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
