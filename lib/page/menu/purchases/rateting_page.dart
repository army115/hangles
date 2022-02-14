import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class Rateting_Page extends StatefulWidget {
  Rateting_Page({Key? key}) : super(key: key);

  @override
  State<Rateting_Page> createState() => _Rateting_PageState();
}

class _Rateting_PageState extends State<Rateting_Page> {
  final List<Tab> _tabs = [
    const Tab(
      text: 'ทั้งหมด',
    ),
    const Tab(
      text: 'รอจ่าย',
    ),
    const Tab(
      text: 'กำลังจัดส่ง',
    ),
    const Tab(
      text: 'ที่จะได้รับ',
    ),
    const Tab(
      text: 'คะแนน/รีวิว',
    ),
    const Tab(
      text: 'สำเร็จ',
    ),
    const Tab(
      text: 'ยกเลิก',
    ),
    const Tab(
      text: 'คืนสินค้า',
    ),
  ];
  final List<Widget> _body = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('คุณไม่มีรายการ'),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('การซื้อของฉัน'),
      ),
      body: DefaultTabController(
        initialIndex: 4,
        length: 8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                elevation: 3,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                labelStyle: TextStyle(
                    fontFamily: 'IBMPlexSansThai', color: Colors.white),
                unselectedLabelStyle: TextStyle(
                    fontFamily: 'IBMPlexSansThai', color: Colors.black),
                unselectedBackgroundColor: Theme.of(context).primaryColorLight,
                backgroundColor: Theme.of(context).primaryColor,
                tabs: _tabs,
              ),
              Expanded(
                child: TabBarView(
                  children: _body,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
