import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HANGLES'),
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.notifications_none_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
    );
  }
}
