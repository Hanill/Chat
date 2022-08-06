import 'package:chat/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(padding: EdgeInsets.only(top: statusBarHeight)),
        Stack(
          children: [
            SvgPicture.asset("assets/images/gnb.svg", width: sizeWidth),
            Positioned(
                left: sizeWidth * 0.064,
                top: sizeHeight * 0.017,
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/icons/backarrow.svg",
                        width: sizeWidth * 0.0746))),
            Positioned(
                left: sizeWidth * 0.165,
                top: sizeHeight * 0.015,
                child: CircleAvatar(radius: sizeWidth * 0.046)),
            Positioned(
              left: sizeWidth * 0.301,
              top: sizeHeight * 0.017,
              child: Text("채팅방",
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      color: Color(0xff191919),
                      fontSize: sizeWidth * 0.053,
                      fontWeight: FontWeight.w400)),
            ),
            Positioned(
              left: sizeWidth * 0.861,
              top: sizeHeight * 0.02,
              child: Container(
                width: sizeWidth * 0.074,
                height: sizeWidth * 0.074,
                color: Colors.purpleAccent,
              ),
            )
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return _chats[index];
          },
          itemCount: _chats.length,
        )),
        SizedBox(
          child: Row(children: [
            GestureDetector(
                onTap: () {},
                child: Container(
                    color: Color(0xffF1F1F5),
                    width: sizeWidth * 0.138,
                    height: sizeWidth * 0.138)),
            Expanded(
              child: SizedBox(
                height: sizeHeight * 0.064,
                child: TextField(
                  controller: _textEditingController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none, //텍스트필드 밑에 파란선 제거
                    hintText: "메시지를 입력하세요",
                    hintStyle: TextStyle(
                        fontFamily: "KoreanFont",
                        fontSize: sizeWidth * 0.037,
                        color: Color(0xff767676)),
                  ),
                  style: TextStyle(
                      fontFamily: "KoreanFont", fontSize: sizeHeight * 0.037),
                  onSubmitted: _handleSubmitted,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _handleSubmitted(_textEditingController.text);
              },
              child: Container(
                  color: Color(0xff909090),
                  width: sizeWidth * 0.138,
                  height: sizeWidth * 0.138),
            ),
          ]),
        ),
      ]),
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
