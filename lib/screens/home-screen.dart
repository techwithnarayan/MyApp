import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#243B55"),
      appBar: AppBar(title: Text("Home"),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/1.2,
          decoration: BoxDecoration(color: Colors.red),
        )
      ],
    ));
  } 
}