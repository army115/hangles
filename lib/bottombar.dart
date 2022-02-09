// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hangles/page/add_product_page.dart';
import 'package:hangles/page/chat_page.dart';
import 'package:hangles/page/home_page.dart';
import 'package:hangles/page/profile_page.dart';
import 'package:hangles/page/search_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Bottombar extends StatefulWidget {
  Bottombar({Key? key}) : super(key: key);
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> _PageOption = [
    HomePage(),
    SearchPage(),
    Add_Product(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30),
          Icon(Icons.search, size: 30),
          Icon(
            Icons.add_circle,
            size: 50,
            color: Colors.black,
          ),
          Icon(Icons.chat_outlined, size: 30),
          CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5')),
        ],
        color: Theme.of(context).primaryColor,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _PageOption.elementAt(_page),
    );
  }
}
