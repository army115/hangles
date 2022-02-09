import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Tab> _tabs = [
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
  List<ListTile> _title = [
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
      ),
      body: Container(
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('กำลังติดตาม  '),
                                Text(
                                  '500',
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                        Container(
                            child: Column(
                          children: [
                            ListTile(
                              title: const Text(
                                'การซื้อของฉัน',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              trailing:
                                  const Icon(Icons.arrow_forward_ios_rounded),
                              onTap: () {},
                            ),
                            const Divider(
                              color: Colors.grey,
                              height: 0,
                            ),
                            Expanded(
                              child: DefaultTabController(
                                length: 8,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, right: 5, left: 5),
                                  child: Column(
                                    children: <Widget>[
                                      ButtonsTabBar(
                                        contentPadding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        backgroundColor: Colors.grey,
                                        labelStyle: const TextStyle(
                                            color: Colors.black),
                                        tabs: _tabs,
                                      ),
                                      Expanded(
                                        child: TabBarView(children: [
                                          Container(
                                              color: Colors.amber,
                                              child: const Text('zxc')),
                                          const Text('897'),
                                          const Text('897'),
                                          const Text('897'),
                                          const Text('897'),
                                          const Text('897'),
                                          const Text('897'),
                                          const Text('897'),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                ...ListTile.divideTiles(
                                  color: Colors.grey,
                                  tiles: _title,
                                ),
                              ],
                            ),
                          ],
                        )),
                        Container(
                          child: Column(children: [const Text('456')]),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
