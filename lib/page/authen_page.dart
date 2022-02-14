// ignore_for_file: deprecated_member_use, unused_shown_name

import 'package:flutter/material.dart';
import 'package:social_auth_buttons/social_auth_buttons.dart';

class AuthenPage extends StatefulWidget {
  AuthenPage({Key? key}) : super(key: key);

  @override
  State<AuthenPage> createState() => _AuthenPageState();
}

class _AuthenPageState extends State<AuthenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.hangles.com/assets/img/thumb/photo-1000x1200--1.jpg'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              login(),
              SizedBox(
                height: 10,
              ),
              facebook(),
              SizedBox(
                height: 10,
              ),
              gmail(),
              SizedBox(
                height: 10,
              ),
              register()
            ],
          ),
        ),
      ),
    );
  }

  Widget register() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('คุณมีบัญชียัง?',
            style: TextStyle(fontSize: 12.5, color: Colors.white)),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const Text('สมัครสมาชิก',
                style: TextStyle(
                  fontSize: 12.5,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                )))
      ],
    );
  }

  Widget login() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
        child: const Text('เข้าสู่ระบบ', style: TextStyle(fontSize: 16)),
      ),
    );
  }

  Widget facebook() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: FacebookAuthButton(
          onPressed: () {},
          darkMode: false,
          text: 'ดำเนินการต่อด้วย Facebook',
          // width: 230,
          iconSize: 25,
          textStyle: TextStyle(fontSize: 13, color: Colors.white)),
    );
  }

  Widget gmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: GoogleAuthButton(
          onPressed: () {},
          darkMode: true,
          text: 'ดำเนินการต่อด้วย Gmail',
          // width: 230,
          iconSize: 25,
          textStyle: TextStyle(fontSize: 13, color: Colors.white)),
    );
  }
}
