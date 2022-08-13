import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String txt;

  const ChatMessage(
    this.txt, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
                left: sizeWidth * 0.856,
                width: sizeWidth * 0.08,
                height: sizeWidth * 0.08,
                child: Container(color: Color(0xffEEEEEE))),
            Container(
                margin: EdgeInsets.fromLTRB(
                    sizeWidth * 0.392, 0, 0, sizeHeight * 0.014),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(sizeWidth * 0.021),
                    color: Color(0xffEEEEEE)),
                width: sizeWidth * 0.544,
                height: sizeHeight * 0.073),
            Positioned(
              left: sizeWidth * 0.418,
              top: sizeHeight * 0.012,
              bottom: sizeHeight * 0.012,
              child: SizedBox(
                width: sizeWidth * 0.512,
                child: Text(
                  txt,
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      fontSize: sizeWidth * 0.037,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
              ),
            ),
            Positioned(
              left: sizeWidth * 0.234,
              top: sizeHeight * 0.023,
              child: SizedBox(
                  child: Text(
                "오후 7:20",
                style: TextStyle(
                    fontFamily: "KoreanFont",
                    fontSize: sizeWidth * 0.032,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff767676)),
              )),
            )
          ],
        ),
      ],
    );
  }
}
