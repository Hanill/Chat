import 'package:chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatMain extends StatelessWidget {
  const ChatMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final  double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(padding: EdgeInsets.only(top: statusBarHeight)),
        Stack(
          children: [
            SvgPicture.asset("assets/images/gnb.svg", width: sizeWidth),
            Positioned(
                left: sizeWidth * 0.064,
                top: sizeHeight * 0.009,
                child: CircleAvatar(radius: sizeWidth * 0.06)),
            Positioned(
              left: sizeWidth * 0.226,
              top: sizeHeight * 0.019,
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
        SizedBox(
          height: sizeHeight * 0.02,
        ),
        Stack(
          children: [
            SvgPicture.asset(
              //채팅방 검색창
              "assets/images/Rectangle 30.svg",
              width: sizeWidth * 0.872,
            ),
            Positioned(
              left: sizeWidth * 0.037,
              top: sizeHeight * 0.016,
              bottom: sizeHeight * 0.015,
              child: SvgPicture.asset(
                "assets/icons/search",
                width: sizeWidth * 0.074,
              ),
            ),
            Positioned(
              left: sizeWidth * 0.128,
              top: sizeHeight * 0.015,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "채팅방을 검색하세요",
                  hintStyle: TextStyle(
                      fontFamily: "KoreanFont",
                      color: Color(0xff767676),
                      fontSize: sizeWidth * 0.037,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ), //검색창
        SizedBox(
          height: sizeHeight * 0.03,
        ),
        Stack(
          children: [
            SizedBox(width: sizeWidth * 0.064),
            Text("최근 메시지",
                style: TextStyle(
                    fontFamily: "KoreanFont",
                    fontSize: sizeWidth * 0.048,
                    fontWeight: FontWeight.w700)),
            SizedBox(width: sizeWidth * 0.064),
            SvgPicture.asset("assets/icons/dot3.svg", width: 0.074)
          ],
        ),
        SizedBox(
          height: sizeHeight * 0.03,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Chat()));
          },
          child: Stack(
            children: [
              Container(
                width: sizeWidth * 0.872,
                height: sizeHeight * 0.06,
                color: Colors.green,
              ),
              CircleAvatar(radius: sizeWidth * 0.06),
              Positioned(
                left: sizeWidth * 0.16,
                right: sizeWidth * 0.096,
                top: sizeHeight * 0.003,
                child: SizedBox(
                  width: sizeWidth * 0.61,
                  height: sizeHeight * 0.026,
                  child: Text("채팅방1",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          color: Color(0xff191919),
                          fontSize: sizeWidth * 0.037,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Positioned(
                left: sizeWidth * 0.16,
                right: sizeWidth * 0.125,
                top: sizeHeight * 0.03,
                child: SizedBox(
                  width: sizeWidth * 0.61,
                  height: sizeHeight * 0.0221,
                  child: Text("1번 채팅방입니다",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          color: Color(0xff767676),
                          fontSize: sizeWidth * 0.032,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Positioned(
                left: sizeWidth * 0.789,
                right: sizeWidth * 0.004,
                top: sizeHeight * 0.03,
                child: SizedBox(
                  width: sizeWidth * 0.61,
                  height: sizeHeight * 0.026,
                  child: Text("3분전",
                      style: TextStyle(
                          fontFamily: "KoreanFont",
                          color: Color(0xff767676),
                          fontSize: sizeWidth * 0.032,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
