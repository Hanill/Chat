import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TradeDetail extends StatelessWidget {
  const TradeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: statusBarHeight)),
          Stack(children: [
            SvgPicture.asset("assets/svg/gnb.svg", width: sizeWidth),
            Positioned(
              left: sizeWidth * 0.0946,
              top: sizeHeight * 0.0197,
              child: Text("거래 게시판",
                  style: TextStyle(
                      fontFamily: "KoreanFont",
                      color: Color(0xff000000),
                      fontSize: sizeWidth * 0.048,
                      fontWeight: FontWeight.w300)),
            )
          ]),
        ],
      ),
    );
  }
}
