import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ReviewPage extends StatefulWidget {
  ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined)),
          ],
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            tabs: const [
              Tab(
                text: 'ร้านค้า',
              ),
              Tab(
                text: 'รีวิว',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ยังไม่มีความคิดเห็น'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ยังไม่มีความคิดเห็น'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
