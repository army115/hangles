// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Add_Product extends StatefulWidget {
  Add_Product({Key? key}) : super(key: key);

  @override
  State<Add_Product> createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.notifications_none_rounded),
          onPressed: () {},
        ),
        title: Text('ข้อความ'),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                indicatorColor: Theme.of(context).primaryColor,
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'ผู้ซื้อ',
                  ),
                  Tab(
                    text: 'ผู้ขาย',
                  ),
                ]),
            Expanded(
                child: TabBarView(
              children: [
                Column(children: [Text('ผู้ซื้อ')]),
                Column(
                  children: [Text('ผู้ขาย')],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
