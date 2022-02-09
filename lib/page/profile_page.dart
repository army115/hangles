// ignore_for_file: sized_box_for_whitespace, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hangles/page/product_page.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class _ProfilePageState extends State<ProfilePage> {
  List<PhotoItem> _items = [
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

  bool follow = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            leading: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.notifications_none_rounded),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_bag_outlined)),
              IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.ellipsis_vertical)),
              IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  icon: const Icon(Icons.settings))
            ],
            bottom: TabBar(
              // indicatorColor: Theme.of(context).primaryColor,
              // labelColor: Theme.of(context).primaryColor,
              // unselectedLabelColor: Colors.black,
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
              //tab ร้านค้า
              SingleChildScrollView(
                  // physics: const BouncingScrollPhysics(),
                  child: store()),
              // ***************************
              review()
            ],
          ),
        ));
  }

  Widget store() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5')),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  '50',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('โพสต์'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  '2000',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('ผู้ติดตาม')
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  '500',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('กำลังติดตาม')
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context).primaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context).primaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context).primaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context).primaryColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Theme.of(context).primaryColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '(5)',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Army Store',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '@Army Bankkok,Thailand',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 27,
                          // width: 100,
                          child: follow
                              ? RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Theme.of(context).primaryColor,
                                  child: const Text(
                                    'ติดตาม',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      follow = !follow;
                                    });
                                  },
                                )
                              : RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Colors.white,
                                  child: Text(
                                    'เลิกติดตาม',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      follow = !follow;
                                    });
                                  },
                                )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_outlined))
                    ],
                  )
                ],
              ),
              const Text(
                  'Used like new 🎀 | please feel free to contact for more details and photos ka 💗'),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
          height: 4,
        ),
        images(),
      ],
    );
  }

  Widget images() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: GridView.builder(
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
    );
  }

  Widget review() {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            width: double.infinity,
            // height: 120,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 5, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '0',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_border_purple500_outlined,
                              size: 15,
                              color: Theme.of(context).primaryColor,
                            ),
                            Icon(
                              Icons.star_border_purple500_outlined,
                              size: 15,
                              color: Theme.of(context).primaryColor,
                            ),
                            Icon(
                              Icons.star_border_purple500_outlined,
                              size: 15,
                              color: Theme.of(context).primaryColor,
                            ),
                            Icon(
                              Icons.star_border_purple500_outlined,
                              size: 15,
                              color: Theme.of(context).primaryColor,
                            ),
                            Icon(
                              Icons.star_border_purple500_outlined,
                              size: 15,
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '(5)',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/review');
                      },
                      child: Row(
                        children: const [
                          Text(
                            '0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ' รีวิว >>',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [const Text('ยังไม่มีความคิดเห็น')],
          )
        ],
      ),
    );
  }
}
