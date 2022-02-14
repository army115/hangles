import 'package:flutter/material.dart';

class CommentPage extends StatefulWidget {
  CommentPage({Key? key}) : super(key: key);

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class CommentsItem {
  final String image;
  final String name;
  final String comment;
  CommentsItem(this.image, this.name, this.comment);
}

class _CommentPageState extends State<CommentPage> {
  TextEditingController? _controller;
  List<CommentsItem> _items = [
    CommentsItem(
        "https://images.pexels.com/photos/326119/pexels-photo-326119.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Pixabay",
        "สนใจค่ะ"),
    CommentsItem(
        "https://images.pexels.com/photos/707344/pexels-photo-707344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Eberhard",
        "สวยมากค่ะ"),
    CommentsItem(
        "https://images.pexels.com/photos/691034/pexels-photo-691034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Mirsad Mujanovic",
        "อยากได้เลยอ่ะ"),
    CommentsItem(
        "https://images.pexels.com/photos/655676/pexels-photo-655676.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Vittorio Staffolani",
        "น่ารักมาก"),
    CommentsItem(
        "https://images.pexels.com/photos/592941/pexels-photo-592941.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        "Tobi",
        "งามหลาย"),
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
        title: const Text('ความคิดเห็น'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/profile');
                                  },
                                  child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          NetworkImage(_items[index].image))),
                              const SizedBox(
                                width: 10,
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
                                          Navigator.pushNamed(
                                              context, '/profile');
                                        },
                                        child: Text(
                                          '${_items[index].name}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )),
                                  ),
                                  Text(
                                    '${_items[index].comment}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                        height: 0,
                        color: Colors.grey,
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      color: Theme.of(context).primaryColorLight,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        // textAlign: TextAlign.center,
                        cursorColor: Colors.black,
                        textInputAction: TextInputAction.send,
                        controller: _controller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 20.0,
                            ),
                            border: InputBorder.none,
                            hintText: "เขียน"),
                        // onEditingComplete: _save,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 30,
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
