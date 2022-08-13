import 'package:flutter/material.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;
    int idx = 0;
    List<Widget> screenList = [
      Text("홈"),
      Text("자랑"),
      Text("구인"),
      Text("북마크"),
      Text("프로필"),
    ];

    return Container(
        width: sizeWidth,
        height: sizeWidth * 0.16,
        color: Color(0xffFFFFFF),
        child: Expanded(
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_rounded),
                label: "",
              ),
            ],
            onTap: (index) {
              idx = index;
            },
            currentIndex: idx,
          ),
        ));
  }
}
