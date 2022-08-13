import 'package:chat/trade_detail.dart';
import 'package:flutter/material.dart';

class TradeBox extends StatefulWidget {
  const TradeBox({Key? key}) : super(key: key);

  @override
  State<TradeBox> createState() => _TradeBoxState();
}

class _TradeBoxState extends State<TradeBox> {
  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
            margin: EdgeInsets.only(
                left: sizeWidth * 0.064, right: sizeWidth * 0.064),
            color: Colors.black,
            width: sizeWidth * 0.872,
            height: sizeHeight * 0.3843),
        Positioned(
            left: sizeWidth * 0.064,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TradeDetail()));
              },
              child: Column(children: [
                Container(
                    width: sizeWidth * 0.404,
                    height: sizeHeight * 0.125,
                    color: Colors.blue),
                Stack(
                  children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.0548,
                        color: Colors.green),
                    Positioned(
                      left: sizeWidth * 0.01192,
                      top: sizeHeight * 0.0055,
                      child: SizedBox(
                        width: sizeWidth * 0.305,
                        height: sizeHeight * 0.043,
                        child: Text("함께 요리 재능을 나눌 사람",
                            style: TextStyle(
                                fontFamily: "KoreanFont",
                                fontSize: sizeWidth * 0.032,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Positioned(
                      left: sizeWidth * 0.331,
                      top: sizeHeight * 0.002,
                      child: Container(
                        width: sizeWidth * 0.05828,
                        height: sizeHeight * 0.0369,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ]),
            )),
        Positioned(
            left: sizeWidth * 0.532,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TradeDetail()));
              },
              child: Column(children: [
                Container(
                    width: sizeWidth * 0.404,
                    height: sizeHeight * 0.125,
                    color: Colors.blue),
                Stack(
                  children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.0548,
                        color: Colors.green),
                    Positioned(
                      left: sizeWidth * 0.01192,
                      top: sizeHeight * 0.0055,
                      child: SizedBox(
                        width: sizeWidth * 0.305,
                        height: sizeHeight * 0.043,
                        child: Text("함께 2 재능을 나눌 사람",
                            style: TextStyle(
                                fontFamily: "KoreanFont",
                                fontSize: sizeWidth * 0.032,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Positioned(
                      left: sizeWidth * 0.331,
                      top: sizeHeight * 0.002,
                      child: Container(
                        width: sizeWidth * 0.05828,
                        height: sizeHeight * 0.0369,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ]),
            )),
        Positioned(
            left: sizeWidth * 0.064,
            top: sizeHeight * 0.204,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TradeDetail()));
              },
              child: Column(children: [
                Container(
                    width: sizeWidth * 0.404,
                    height: sizeHeight * 0.125,
                    color: Colors.blue),
                Stack(
                  children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.0548,
                        color: Colors.green),
                    Positioned(
                      left: sizeWidth * 0.01192,
                      top: sizeHeight * 0.0055,
                      child: SizedBox(
                        width: sizeWidth * 0.305,
                        height: sizeHeight * 0.043,
                        child: Text("함께 3 재능을 나눌 사람",
                            style: TextStyle(
                                fontFamily: "KoreanFont",
                                fontSize: sizeWidth * 0.032,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Positioned(
                      left: sizeWidth * 0.331,
                      top: sizeHeight * 0.002,
                      child: Container(
                        width: sizeWidth * 0.05828,
                        height: sizeHeight * 0.0369,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ]),
            )),
        Positioned(
            left: sizeWidth * 0.532,
            top: sizeHeight * 0.204,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TradeDetail()));
              },
              child: Column(children: [
                Container(
                    width: sizeWidth * 0.404,
                    height: sizeHeight * 0.125,
                    color: Colors.blue),
                Stack(
                  children: [
                    Container(
                        width: sizeWidth * 0.404,
                        height: sizeHeight * 0.0548,
                        color: Colors.green),
                    Positioned(
                      left: sizeWidth * 0.01192,
                      top: sizeHeight * 0.0055,
                      child: SizedBox(
                        width: sizeWidth * 0.305,
                        height: sizeHeight * 0.043,
                        child: Text("함께 4 재능을 나눌 사람",
                            style: TextStyle(
                                fontFamily: "KoreanFont",
                                fontSize: sizeWidth * 0.032,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Positioned(
                      left: sizeWidth * 0.331,
                      top: sizeHeight * 0.002,
                      child: Container(
                        width: sizeWidth * 0.05828,
                        height: sizeHeight * 0.0369,
                        color: Colors.yellow,
                      ),
                    )
                  ],
                ),
              ]),
            )),
      ],
    );
  }
}
