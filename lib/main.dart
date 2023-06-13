import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'screens/about-screen.dart';
import 'screens/home-screen.dart';
import 'screens/picture-screen.dart';
import 'screens/video-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final Screen = [
    HomeScreen(),
    VidScreen(
      VideoLink: 'https://vod-progressive.akamaized.net/exp=1686664852~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4047%2F16%2F420239207%2F1814675769.mp4~hmac=0cdd44faf6b818e89f76c2b733bb5cd74ab5a00b9ce5882f9a6d3a9be8280257/vimeo-prod-skyfire-std-us/01/4047/16/420239207/1814675769.mp4',
    ),
    PicScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#243B55"),
      
      
      body: Screen[_currentIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: GNav(
            backgroundColor: Colors.transparent,
            gap: 8,
            activeColor: Colors.white,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            tabBackgroundColor: HexColor("#566573"),
            iconSize: 25,
            padding: EdgeInsets.all(15),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
                iconColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: Icons.movie,
                text: "Videos",
                iconColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: Icons.image,
                text: "Pictures",
                iconColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: Icons.info,
                text: "About",
                iconColor: Colors.white,
                textColor: Colors.white,
              ),
            ],
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
