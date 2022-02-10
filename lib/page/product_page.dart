import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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

class _ProductPageState extends State<ProductPage> {
  bool shopping = true;
  bool favorite = true;
  bool bookmark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5')),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Army Store',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  child: const Text(
                    '@Army Bankkok,Thailand',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  constraints: BoxConstraints(maxWidth: 350),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
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
                                  constraints: BoxConstraints(maxWidth: 350),
                                  // backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 60,
                                      // color: Colors.transparent,
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
                          Divider(
                            color: Colors.grey,
                            height: 0,
                          ),
                          SizedBox(
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
              icon: Icon(CupertinoIcons.ellipsis_vertical))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(widget.image),
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.all(20.0),
            //   child: Center(
            //     child: Text(
            //       widget.name,
            //       style: TextStyle(fontSize: 40),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'ราคา',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '100. B',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                      child: SizedBox(
                          height: 30,
                          // width: 115,
                          child: shopping
                              ? RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
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
                                      borderRadius: BorderRadius.circular(20)),
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
                                ))),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 5, 10),
              child: Row(
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
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.bubble_right)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_outlined)),
                    ],
                  ),
                  Container(
                    child: bookmark
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                bookmark = !bookmark;
                              });
                            },
                            icon: Icon(CupertinoIcons.bookmark))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                bookmark = !bookmark;
                              });
                            },
                            icon: Icon(CupertinoIcons.bookmark_fill)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
