import 'package:flutter/material.dart';

class ForgotPassPage extends StatefulWidget {
  ForgotPassPage({Key? key}) : super(key: key);

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _user = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('เข้าสู่ระบบ'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ลืมรหัสผ่านของคุณ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'ป้อนอีเมลหรือชื่อผู้ใช้ของคุณเพื่อรับลิงค์สำหรับเปลี่ยนรหัสผ่านของคุณ?',
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                username(),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                const SizedBox(
                  height: 80,
                ),
                submit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget username() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: TextFormField(
          style: const TextStyle(fontSize: 14),
          cursorColor: Theme.of(context).primaryColor,
          controller: _user,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            // labelText: 'ชื่อผู้ใช้',
            hintText: 'Your username or email',
            // prefixIcon: Icon(
            //   Icons.person,
            //   //prefixIcon ใส่กรอบครอบไอคอน
            //   size: 25,
            // ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),
          validator: (values) {
            if (values == null || values.isEmpty) {
              return 'กรุณากรอกชื่อผู้ใช้';
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }

  Widget submit() {
    return SizedBox(
      width: 140,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            Map<String, dynamic> valuse = Map();
            valuse['u_user'] = _user.text;

            print(_user.text);

            Navigator.popUntil(context, ModalRoute.withName('/'));
          }
        },
        child: const Text('ส่ง',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
