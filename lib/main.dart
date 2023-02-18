// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_rebuild/Pages/Feed.dart';
import 'package:insta_rebuild/Pages/Search.dart';
import 'package:insta_rebuild/Pages/Reel_Page.dart';
import 'package:insta_rebuild/Pages/Shop.dart';
import 'package:insta_rebuild/Pages/Personal_Page.dart';
import 'package:awesome_icons/awesome_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Rebuild',
      theme: ThemeData(
        primarySwatch: customSwatch,
        appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    Feed(),
    Search(),
    Reel(),
    Shop(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        iconSize: 40,
        selectedFontSize: 16,
        unselectedFontSize: 13,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index,),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home, size: 30,),
            label: 'Feed',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search, size: 30,),
            label: 'Search',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cameraRetro, size: 30,),
            label: 'Reels',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shoppingBag, size: 30,),
            label: 'Shop',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(backgroundImage: AssetImage('assets/feed/profile/profile_picture.png',),radius: 15),
            label: 'Reels',
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: screens[currentIndex],
        ),
      ),
    );
  }
}



