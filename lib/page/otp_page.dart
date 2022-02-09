// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.cancel_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.red,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                'ยืนยันหมายเลขโทรศัพท์เพื่อเปิดใช้งาน',
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text('ส่งข้อความถึง xxx xxx xxxx แก้ไข'),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                  color: Theme.of(context).primaryColorLight,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 150,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              actionsAlignment: MainAxisAlignment.center,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              title: Center(child: const Text('สำเร็จ')),
                              titleTextStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                              content: const Text(
                                'หมายเลขโทรศัพท์ของคุณได้รับการยืนยันแล้ว',
                                textAlign: TextAlign.center,
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(15, 10, 15, 10),
                              contentTextStyle:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              actionsPadding:
                                  const EdgeInsets.only(bottom: 10, top: 0),
                              actions: <Widget>[
                                FlatButton(
                                    minWidth: 150,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    color: Theme.of(context).primaryColor,
                                    child: Text(
                                      'สำเร็จ',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    onPressed: () {
                                      int count = 0;
                                      Navigator.of(context)
                                          .popUntil((_) => count++ >= 2);
                                    }),
                              ],
                            ));
                  },
                  child: const Text('ยืนยัน',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('( Ref : ODH , OTP หมดอายุใน 04:54 )')
            ],
          ),
        ),
      ),
    );
  }
}
