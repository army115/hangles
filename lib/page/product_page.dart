import 'package:auto_size_text/auto_size_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:hangles/page/add_product_page.dart';
import 'package:hangles/page/chat_page.dart';
import 'package:hangles/page/home_page.dart';
import 'package:hangles/page/profile_page.dart';
import 'package:hangles/page/search_page.dart';
import 'package:sign_button/sign_button.dart';
import 'package:social_auth_buttons/res/buttons/facebook_auth_button.dart';
import 'package:social_auth_buttons/res/buttons/twitter_auth_button.dart';
import 'package:social_auth_buttons/res/shared/auth_button_style.dart';

class ProductPage extends StatefulWidget {
  final String image;
  final String name;

  ProductPage({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

int _page = 0;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
final List<Widget> _PageOption = [
  HomePage(),
  SearchPage(),
  Add_Product(),
  ChatPage(),
  ProfilePage(),
];

class _ProductPageState extends State<ProductPage> {
  bool shopping = true;
  bool favorite = true;
  bool bookmark = true;

  final List<PhotoItem> _items = [
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
      // bottomNavigationBar: CurvedNavigationBar(
      //   key: _bottomNavigationKey,
      //   index: 0,
      //   height: 60.0,
      //   items: <Widget>[
      //     IconButton(
      //       onPressed: () {
      //         Navigator.pushNamed(context, '/bottom');
      //       },
      //       icon: Icon(Icons.home_outlined, size: 30),
      //     ),
      //     Icon(Icons.search, size: 30),
      //     Icon(
      //       Icons.add_circle,
      //       size: 50,
      //       color: Colors.black,
      //     ),
      //     Icon(Icons.chat_outlined, size: 30),
      //     CircleAvatar(
      //         radius: 15,
      //         backgroundImage: NetworkImage(
      //             'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5')),
      //   ],
      //   color: Theme.of(context).primaryColor,
      //   buttonBackgroundColor: Colors.white,
      //   backgroundColor: Colors.white,
      //   animationCurve: Curves.easeInOut,
      //   animationDuration: Duration(milliseconds: 400),
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      //   letIndexChange: (index) => true,
      // ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: const NetworkImage(
                        'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5'))),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          // minimumSize: const Size(0, 0),
                          alignment: Alignment.centerLeft),
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: const Text(
                        'Army Store',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      )),
                ),
                const Text(
                  '@Army Bankkok,Thailand',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  constraints: const BoxConstraints(maxWidth: 350),
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ...ListTile.divideTiles(color: Colors.grey, tiles: [
                            ListTile(
                              title: const Text(
                                'คัดลอกลิงค์',
                                textAlign: TextAlign.center,
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text(
                                'แชร์ ...',
                                textAlign: TextAlign.center,
                              ),
                              onTap: () {
                                showModalBottomSheet<void>(
                                  barrierColor: Colors.transparent,
                                  constraints:
                                      const BoxConstraints(maxWidth: 350),
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 60,
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SignInButton.mini(
                                            padding: 1,
                                            buttonType: ButtonType.facebook,
                                            onPressed: () {},
                                          ),
                                          SignInButton.mini(
                                            padding: 1,
                                            buttonType: ButtonType.twitter,
                                            onPressed: () {},
                                          ),
                                          SignInButton.mini(
                                            padding: 1,
                                            buttonType: ButtonType.pinterest,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            ListTile(
                              title: const Text(
                                'รายงาน',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.red),
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text(
                                'ติดตาม',
                                textAlign: TextAlign.center,
                              ),
                              onTap: () {},
                            ),
                          ]),
                          const Divider(
                            color: Colors.grey,
                            height: 0,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 150,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child: const Text('ยกเลิก',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(CupertinoIcons.ellipsis_vertical))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(widget.image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'ราคา',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'IBMPlexSansThai'),
                      children: [
                        TextSpan(
                            text: ' 100. B',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                      height: 30,
                      // width: 115,
                      child: shopping
                          ? RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Theme.of(context).primaryColor,
                              child: const Text(
                                'เพิ่มในกระเป๋า',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                setState(() {
                                  shopping = !shopping;
                                });
                              },
                            )
                          : RaisedButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.white,
                              child: Text(
                                'นำออกจากกระเป๋า',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.5),
                              ),
                              onPressed: () {
                                setState(() {
                                  shopping = !shopping;
                                });
                              },
                            )),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
            ),
            detail(),
            orther()
          ],
        ),
      ),
    );
  }

  Widget detail() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 27,
                    width: 80,
                    child: favorite
                        ? RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey[300],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Text(
                                  ' 0',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                favorite = !favorite;
                              });
                            },
                          )
                        : RaisedButton(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text(
                                  ' 1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                favorite = !favorite;
                              });
                            },
                          ),
                  ),
                  IconButton(
                      padding: const EdgeInsets.only(left: 15),
                      constraints: const BoxConstraints(),
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.bubble_right)),
                  IconButton(
                      padding: const EdgeInsets.only(left: 15),
                      constraints: const BoxConstraints(),
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.chat_outlined)),
                ],
              ),
              Container(
                child: bookmark
                    ? IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            bookmark = !bookmark;
                          });
                        },
                        icon: const Icon(CupertinoIcons.bookmark))
                    : IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            bookmark = !bookmark;
                          });
                        },
                        icon: const Icon(CupertinoIcons.bookmark_fill)),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          // ignore: deprecated_member_use
          Container(
            height: 30,
            width: 100,
            child: TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                    alignment: Alignment.centerLeft),
                onPressed: () {
                  Navigator.pushNamed(context, '/likes');
                },
                child: Row(
                  children: const [
                    Text(
                      '0 อื่น ๆ ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    Text('ที่ชอบ',
                        style: TextStyle(fontSize: 12, color: Colors.black))
                  ],
                )),
          ),
          Container(
            height: 25,
            child: Row(
              children: [
                //ชื่อร้าน
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      alignment: Alignment.centerLeft),
                  child: const Text(
                    'Army Store',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13),
                  ),
                  onPressed: () {},
                ),
                //ประเภท
                const Text(
                  ' - The softest silk buttons bluse ',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ],
            ),
          ),
          //รายละเอียด
          const AutoSizeText(
            ' สี LIme ไซส์ S new in pack with tag ใหม่เหมือนซื้อใหม่เลยค่ะ ลองเอามาทาบเฉยๆเพราะใส่ไม่ได้แง ราคาเต็มซื้อมา 1290฿ ส่งต่อ 890฿ งับ ดูไซส์รูปต่อไปได้เลยค่า',
            style: TextStyle(fontSize: 13),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: const TextSpan(
              text: 'แบรนด์',
              style:
                  TextStyle(color: Colors.black, fontFamily: 'IBMPlexSansThai'),
              children: [
                TextSpan(
                    text: '  Cintageshop',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: const TextSpan(
              text: 'ขนาด',
              style:
                  TextStyle(color: Colors.black, fontFamily: 'IBMPlexSansThai'),
              children: [
                TextSpan(
                    text: '  s', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.pushNamed(context, '/comments');
                    },
                    child: const Text(
                      'ดูความคิดเห็น .......',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )),
                const Text('5 เดือนที่ผ่านมา', style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget orther() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: const Radius.circular(20)),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ข้อมูลเพิ่มเติมเกี่ยวกับผู้ขาย',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: const CircleAvatar(
                            radius: 25,
                            backgroundImage: const NetworkImage(
                                'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5'))),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  // minimumSize: const Size(0, 0),
                                  alignment: Alignment.centerLeft),
                              onPressed: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              child: const Text(
                                'Army Store',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                        ),
                        const Text(
                          '@Army Bankkok,Thailand',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Row(
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
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                    'Used like new 🎀 | please feel free to contact for more details and photos ka 💗',
                    style: const TextStyle(fontSize: 13)),
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'แท็ก',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                    child: Text(
                        '#rallymovement #somethingapp #somethingapparel #atresturebox #pomelo #zara #hm #loonnystore #chamii')),
                // Expanded(
                //   child: Wrap(
                //     alignment: WrapAlignment.spaceEvenly,
                //     children: const [
                //       Text('#adamsexyeve'),
                //       Text('#blue'),
                //       Text('#beachvibe'),
                //       Text('#jumpsuit'),
                //       Text('#rallymovement'),
                //       Text('#somethingapp'),
                //       Text('#somethingapparel'),
                //       Text('#loonnystore'),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.grey,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text('บางทีรายการ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 8,
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(
                              image: _items[index].image,
                              name: _items[index].name),
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
        ],
      ),
    );
  }
}
