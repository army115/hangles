// ignore_for_file: avoid_unnecessary_containers

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:hangles/page/product_page.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class _MenuPageState extends State<MenuPage> {
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

  final List<ListTile> _bayer = [
    ListTile(
      title: const Text('บันทึกไว้'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('สิ่งที่ถูกใจ'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('การตั้งค่าบัญชีผู้ซื้อ'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('เชื่อมต่อกับ line notify'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('ศูนย์ช่วยเหลือ'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('บทความ'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('นโยบาย'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
  ];

  final List<ListTile> _vendor = [
    ListTile(
      title: const Text('สินค้าของฉัน'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('รายได้ของฉัน'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('บัญชีธนาคาร'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('Seller Balance'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('การจัดส่งของฉัน'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('ที่อยู่คลัง'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('การตั้งค่าผู้ขาย'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
    ListTile(
      title: const Text('ยืนยันคำขอ'),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {},
    ),
  ];

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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.notifications_none_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5')),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Army Store',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('ผู้ติดตาม  '),
                                  Text(
                                    '2000',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text('กำลังติดตาม  '),
                                  Text(
                                    '500',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 0,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: const [
                          Tab(
                            text: 'ร้านค้า',
                          ),
                          Tab(
                            text: 'รีวิว',
                          )
                        ],
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          bayer(),
                          vendor(),
                        ]),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget history() {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'ดูเมื่อเร็ว ๆ นี้',
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {},
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
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

  Widget bayer() {
    return Container(
        child: Column(
      children: [
        ListTile(
          title: const Text(
            'การซื้อของฉัน',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
          height: 0,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          // color: Colors.amber,
          padding: const EdgeInsets.only(top: 0, right: 5, left: 5, bottom: 0),
          child: ListView(
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('ทั้งหมด'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('รอจ่าย'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('กำลังจัดส่ง'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('ที่จะได้รับ'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('คะแนน/รีวิว'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('สำเร็จ'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('ยกเลิก'))),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: RaisedButton(
                          color: Theme.of(context).primaryColorLight,
                          onPressed: () {},
                          child: Text('คืนสินค้า'))),
                ],
              ),
            ],
          ),
        ),
        history(),
        Expanded(
          child: Column(
            children: [
              ...ListTile.divideTiles(
                color: Colors.grey,
                tiles: _bayer,
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget vendor() {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'การซื้อของฉัน',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {},
          ),
          const Divider(
            color: Colors.grey,
            height: 0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            // color: Colors.amber,
            padding:
                const EdgeInsets.only(top: 0, right: 5, left: 5, bottom: 0),
            child: ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('ทั้งหมด'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('รอจ่าย'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('กำลังจัดส่ง'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('ที่จะได้รับ'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('คะแนน/รีวิว'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('สำเร็จ'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('ยกเลิก'))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: RaisedButton(
                            color: Theme.of(context).primaryColorLight,
                            onPressed: () {},
                            child: Text('คืนสินค้า'))),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...ListTile.divideTiles(
                  color: Colors.grey,
                  tiles: _vendor,
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: Text(
                    'โปรโมชั่น',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                ListTile(
                  title: const Text(
                    'เรียกใช้โปรโมชั่น',
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: Text(
                    'สนับสนุน',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                ListTile(
                  title: const Text(
                    'ศูนย์ช่วยเหลือ',
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                ListTile(
                  title: const Text(
                    'นโบาย',
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
