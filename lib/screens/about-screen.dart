import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            Text("Made with \u{2764} by TechwithNarayan", style: TextStyle(
              color: Colors.white
            ),),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/github-logo.png')),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              height: 60,
              width: 160,
            )
          
          ],
        ),
      ),
    ));
  }
}