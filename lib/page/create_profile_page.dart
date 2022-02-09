// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Create_Profile extends StatefulWidget {
  Create_Profile({Key? key}) : super(key: key);

  @override
  State<Create_Profile> createState() => _Create_ProfileState();
}

class _Create_ProfileState extends State<Create_Profile> {
  final _name = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  var _dropdownSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('สร้างโปรไฟล์'),
      ),
      body: Container(
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 50),
                FlatButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      (Icons.camera_alt),
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                  cursorColor: Colors.black,
                  controller: _name,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    // labelText: 'อีเมล',
                    hintText: 'เพิ่มชื่อที่ใช้แสดง',
                    hintStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    // prefixIcon: Icon(Icons.email, size: 25),
                  ),
                  validator: (values) {
                    if (values!.isEmpty) {
                      return 'กรุณากรอกอีเมล';
                    } else if (values.isEmpty || !values.contains("@")) {
                      return "รูปแบบอีเมลไม่ถูกต้อง";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('เพศ'),
                      sex(),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('วันเกิด'),
                      Row(
                        children: [
                          sex(),
                          sex(),
                          sex(),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 60,
                ),
                submit()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sex() {
    return DropdownButton<String>(
      underline: Container(
        height: 0,
      ),
      dropdownColor: Colors.white,
      value: _dropdownSex,
      icon: Icon(Icons.arrow_drop_down_sharp, size: 30),
      items: <String>[
        'ชาย',
        'หญิง',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text(
        "เพศ",
      ),
      onChanged: (String? value) {
        setState(() {
          _dropdownSex = value!;
        });
      },
    );
  }

  Widget submit() {
    return SizedBox(
      width: 150,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          // Navigator.pop(context,);
        },
        child: const Text('ดำเนินการต่อ',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
