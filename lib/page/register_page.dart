// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _user = TextEditingController();
  final _pass = TextEditingController();
  final _conpass = TextEditingController();
  final _fname = TextEditingController();
  final _lname = TextEditingController();
  final _tel = TextEditingController();
  final _email = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool redEyepass = true;
  bool redEyecon = true;
  bool isChecked = false;
  Null isEmpty = null;
  var confirmPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('ลงทะเบียน'),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                username(),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      ufname(),
                      const VerticalDivider(
                        color: Colors.grey,
                        // endIndent: 5,
                        // indent: 5,
                        // thickness: 1,
                        width: 0,
                      ),
                      ulastname(),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                email(),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                password(),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                conpass(),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                phone(),
                const Divider(
                  color: Colors.grey,
                  height: 0,
                ),
                allow(),
                SizedBox(
                  height: 50,
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              // style: const TextStyle(fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              controller: _user,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                // labelText: 'ชื่อผู้ใช้',
                hintText: 'ชื่อผู้ใช้สามารถตั้งได้เพียงครั้งเดียว',
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              controller: _pass,
              obscureText: redEyepass,
              decoration: InputDecoration(
                border: InputBorder.none,
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
              ),
              validator: (values) {
                confirmPass = values;
                if (values!.isEmpty) {
                  return 'กรุณากรอกรหัสผ่าน';
                } else if (values.length < 8) {
                  return "รหัสผ่านอย่างน้อย 8 ตัว";
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

  Widget conpass() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('ยืนยันรหัสผ่าน'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              controller: _conpass,
              obscureText: redEyecon,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      redEyecon = !redEyecon;
                    });
                  },
                  icon: redEyecon
                      ? Icon(
                          Icons.visibility,
                          // color: MyConstant.dark,
                        )
                      : Icon(
                          Icons.visibility_off,
                          // color: MyConstant.dark,
                        ),
                ),
              ),
              validator: (values) {
                if (values!.isEmpty) {
                  return 'กรุณากรอกรหัสผ่าน';
                } else if (values != confirmPass) {
                  return "รหัสผ่านไม่ตรงกัน";
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

  Widget ufname() {
    return SizedBox(
      width: 190,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('ชื่อจริง'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              controller: _fname,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              ),
              validator: (values) {
                if (values!.isEmpty) return 'กรุณากรอกชื่อ';
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget ulastname() {
    return SizedBox(
      width: 190,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('นามสกุล'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              controller: _lname,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              ),
              validator: (values) {
                if (values!.isEmpty) return 'กรุณากรอกนามสกุล';
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget phone() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('เบอร์โทรศัพท์'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              maxLength: 10,
              controller: _tel,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                counter: Offstage(),
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                suffix: TextButton(
                    onPressed: () {
                      // if (_formkey.currentState!.validate()) {

                      //   Navigator.pushNamed(context, '/otp');
                      // }
                      Navigator.pushNamed(context, '/otp');
                    },
                    child: Text(
                      ' ยืนยันทันที >>',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              validator: (values) {
                if (values!.isEmpty) {
                  return 'กรุณากรอกเบอร์โทร';
                } else if (values.length < 10) {
                  return "กรุณากรอกเบอร์โทรให้ครบ 10 ตัว";
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

  Widget email() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('อีเมล'),
                Text(
                  ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            TextFormField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              cursorColor: Theme.of(context).primaryColor,
              controller: _email,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                // labelText: 'อีเมล',
                // hintText: 'กรอกอีเมล',
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
          ],
        ),
      ),
    );
  }

  Widget allow() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                child: Row(
                  children: [
                    const Text('การดำเนินการต่อแสดงว่าคุณยอมรับ'),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(0, 0),
                            alignment: Alignment.centerLeft),
                        onPressed: () {},
                        child: Text(
                          ' เงื่อนไข',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                  ],
                ),
              ),
              Container(
                height: 25,
                child: Row(
                  children: [
                    const Text('บริการของเราขึ้นอยู่กับ'),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(0, 0),
                            alignment: Alignment.centerLeft),
                        onPressed: () {},
                        child: Text(
                          ' นโยบายความเป็นส่วนตัว',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                  ],
                ),
              )
            ],
          ),
          Checkbox(
            checkColor: Colors.white,
            activeColor: Theme.of(context).primaryColor,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          )
        ],
      ),
    ));
  }

  Widget submit() {
    return SizedBox(
      width: 130,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          // if (_formkey.currentState!.validate()) {
          //   Map<String, dynamic> valuse = Map();
          //   valuse['u_user'] = _user.text;
          //   valuse['u_pass'] = _conpass.text;
          //   valuse['u_name'] = _fname.text;
          //   valuse['u_lastname'] = _lname.text;
          //   valuse['u_email'] = _email.text;
          //   valuse['u_tel'] = _tel.text;

          //   print(_user.text);
          //   print(_conpass.text);
          //   print(_fname.text);
          //   print(_lname.text);
          //   print(_email.text);
          //   print(_tel.text);

          //   Navigator.pushNamed(context, '/create');
          // }
          Navigator.pushNamed(context, '/create');
        },
        child: const Text('สร้างบัญชี',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
