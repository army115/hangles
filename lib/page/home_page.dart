import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangles/page/product_page.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class _HomePageState extends State<HomePage> {
  final List<PhotoItem> _items = [
    PhotoItem(
        "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Stephan Seeber"),
    PhotoItem(
        "https://images.pexels.com/photos/1758531/pexels-photo-1758531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Liam Gant"),
    PhotoItem(
        "https://images.pexels.com/photos/1130847/pexels-photo-1130847.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Stephan Seeber"),
    PhotoItem(
        "https://images.pexels.com/photos/45900/landscape-scotland-isle-of-skye-old-man-of-storr-45900.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Pixabay"),
    PhotoItem(
        "https://images.pexels.com/photos/165779/pexels-photo-165779.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Scott Webb"),
    PhotoItem(
        "https://images.pexels.com/photos/548264/pexels-photo-548264.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Krivec Ales"),
    PhotoItem(
        "https://images.pexels.com/photos/188973/matterhorn-alpine-zermatt-mountains-188973.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Pixabay"),
    PhotoItem(
        "https://images.pexels.com/photos/795188/pexels-photo-795188.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Melanie Wupper"),
    PhotoItem(
        "https://images.pexels.com/photos/5222/snow-mountains-forest-winter.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Jaymantri"),
    PhotoItem(
        "https://images.pexels.com/photos/789381/pexels-photo-789381.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Riciardus"),
    PhotoItem(
        "https://images.pexels.com/photos/326119/pexels-photo-326119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Pixabay"),
    PhotoItem(
        "https://images.pexels.com/photos/707344/pexels-photo-707344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Eberhard"),
    PhotoItem(
        "https://images.pexels.com/photos/691034/pexels-photo-691034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Mirsad Mujanovic"),
    PhotoItem(
        "https://images.pexels.com/photos/655676/pexels-photo-655676.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Vittorio Staffolani"),
    PhotoItem(
        "https://images.pexels.com/photos/592941/pexels-photo-592941.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Tobi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            letterSpacing: 3),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [popular(), feed()],
        ),
      ),
    );
  }

  Widget popular() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ยอดนิยม',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/popular');
                    },
                    child: Row(
                      children: [
                        Text('ดูเพิ่มเติม '),
                        Icon(
                          CupertinoIcons.chevron_right_2,
                          size: 15,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            child: StaggeredGridView.countBuilder(
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(_items[index].image),
                      fit: BoxFit.cover,
                    ),
                    // borderRadius: BorderRadius.circular(10.0)
                  ),
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.count(1, index.isEven ? 2.1 : 1.05);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget feed() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'สไตล์ของคุณ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 25,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(0, 0),
                          alignment: Alignment.centerLeft),
                      onPressed: () {},
                      child: Text(
                        'อัพเดทขนาดและสไตล์ของคุณที่นี่',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor),
                      )),
                ),
              ],
            ),
          ),
          GridView.builder(
            primary: false,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
            ),
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductPage(
                          image: _items[index].image, name: _items[index].name),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        _items[index].image,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
