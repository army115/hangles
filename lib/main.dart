import 'package:flutter/material.dart';
import 'package:hangles/Bottombar.dart';
import 'package:hangles/page/Comment_page.dart';
import 'package:hangles/page/Test.dart';
import 'package:hangles/page/add_product_page.dart';
import 'package:hangles/page/chat_page.dart';
import 'package:hangles/page/create_profile_page.dart';
import 'package:hangles/page/forgot_pass.dart';
import 'package:hangles/page/home_page.dart';
import 'package:hangles/page/authen_page.dart';
import 'package:hangles/page/inbox_page.dart';
import 'package:hangles/page/like_page.dart';
import 'package:hangles/page/login_page.dart';
import 'package:hangles/page/menu/menu_page.dart';
import 'package:hangles/page/otp_page.dart';
import 'package:hangles/page/popular_page.dart';
import 'package:hangles/page/product_page.dart';
import 'package:hangles/page/profile_page.dart';
import 'package:hangles/page/register_page.dart';
import 'package:hangles/page/review_page.dart';
import 'package:hangles/page/search_page.dart';
import 'package:hangles/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //   child,
      //   maxWidth: 1200,
      //   minWidth: 480,
      //   defaultScale: true,
      //   breakpoints: [
      //     ResponsiveBreakpoint.resize(480, name: MOBILE),
      //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //   ],
      // ),
      debugShowCheckedModeBanner: false,
      theme: mytheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthenPage(),
        '/login': (context) => LoginPage(),
        '/bottom': (context) => Bottombar(),
        '/home': (context) => HomePage(),
        '/popular': (context) => PopularPage(),
        '/register': (context) => RegisterPage(),
        '/create': (context) => Create_Profile(),
        '/forgot': (context) => ForgotPassPage(),
        '/addproduct': (context) => Add_Product(),
        '/menu': (context) => MenuPage(),
        '/review': (context) => ReviewPage(),
        '/otp': (context) => OTPPage(),
        '/search': (context) => SearchPage(),
        '/chat': (context) => ChatPage(),
        '/inbox': (context) => InboxPage(image: '', name: ''),
        '/profile': (context) => ProfilePage(),
        '/product': (context) => ProductPage(image: '', name: ''),
        '/likes': (context) => LikePage(),
        '/comments': (context) => CommentPage(),
      },
      // home: MenuPage(),
    );
  }
}
