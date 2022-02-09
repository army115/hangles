import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _user = TextEditingController();
  final _pass = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool redEyepass = true;

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
                username(),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                password(),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                const SizedBox(
                  height: 80,
                ),
                submit(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 150,
                  child: TextButton(
                    child: Column(
                      children: const [
                        Text(
                          'ลืมรหัสผ่านหรือไม่?',
                          style: TextStyle(color: Colors.black),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 15,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot');
                    },
                  ),
                ),
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
        child: Column(
          children: [
            Row(
              children: const [
                Text('ชื่อผู้ใช้'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
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
                // hintText: 'ชื่อผู้ใช้สามารถตั้งได้เพียงครั้งเดียว',
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
          ],
        ),
      ),
    );
  }

  Widget password() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('รหัสผ่าน'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              controller: _pass,
              obscureText: redEyepass,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                // labelText: 'รหัสผ่าน',
                // hintText: 'กรอกรหัสผ่าน อย่างน้อย 8 ตัว',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      redEyepass = !redEyepass;
                    });
                  },
                  icon: redEyepass
                      ? Icon(
                          Icons.visibility,
                          // color: MyConstant.dark,
                        )
                      : Icon(
                          Icons.visibility_off,
                          // color: MyConstant.dark,
                        ),
                ),
                // prefixIcon: Icon(Icons.vpn_key, size: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              validator: (values) {
                if (values == null || values.isEmpty) {
                  return 'กรุณากรอกรหัสผ่าน';
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget submit() {
    return SizedBox(
      width: 150,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            Map<String, dynamic> valuse = Map();
            valuse['u_user'] = _user.text;
            valuse['u_pass'] = _pass.text;

            print(_user.text);
            print(_pass.text);

            Navigator.pushNamed(context, '/bottom');
          }
        },
        child: const Text('เข้าสู่ระบบ',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
