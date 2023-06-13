import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#243B55"),
      appBar: AppBar(title: Text("About"),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,),
      body: AboutMe(),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)
                
              ),
              height: 150,
              width: 150,
              child: LottieBuilder.network('https://assets2.lottiefiles.com/packages/lf20_34RWGs.json'),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Hii Flutter", style: TextStyle(color: Colors.white, fontSize: 40, fontFamily: 'Ubuntu'),),
              Container(
                width: MediaQuery.of(context).size.width/1.5,
                child: Divider(
                  thickness: 2.0,
                color: Colors.white,
                height: 22
                          ),
              ),
            Text("Flutter design \u{1F609}'", style: TextStyle(
              color: Colors.white
            ),),
          
          ],
        ),
      ),
    ));
  }
}