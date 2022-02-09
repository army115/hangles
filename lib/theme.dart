import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData mytheme() {
  return ThemeData(
      scaffoldBackgroundColor: HexColor('#ffffff'),
      primaryColor: HexColor('#35bdb4'),
      backgroundColor: HexColor('#ffffff'),
      primaryColorLight: HexColor('#f1f1f1'),
      fontFamily: 'IBMPlexSansThai',
      // fontFamily: 'Sarabun',
      // fontFamily: 'Billabong',
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: HexColor('#35bdb4'),
          fontSize: 22,
        ),
        centerTitle: true,
        color: HexColor('#ffffff'),
        elevation: 1,
        iconTheme: IconThemeData(color: HexColor('#000000')),
        // actionsIconTheme: IconThemeData(color: HexColor('#000000'), size: 30)
      ),
      tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: HexColor('#35bdb4'), width: 2)),
        labelColor: HexColor('#35bdb4'),
        unselectedLabelColor: Colors.black,
      ));
}
