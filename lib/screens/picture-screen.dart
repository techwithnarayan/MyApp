import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PicScreen extends StatelessWidget {
  const PicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#243B55"),
      appBar: AppBar(title: Text("Pictures"),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,),
    );
  }
}