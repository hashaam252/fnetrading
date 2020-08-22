import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/intro.dart';

import 'dashboard.dart';
import 'innerdrawer.dart';



class Splash extends StatefulWidget {
  @override
  _Splash createState() => new _Splash();
}

class _Splash extends State<Splash> {
  String uid;

  startTime() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  Future navigationPage() async {
 var route = MaterialPageRoute(
        builder: (BuildContext context) => new intro());
    Navigator.of(context).pushReplacement(route);
   

  }

  @override
  void initState() {
    super.initState();
    //startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("images/images.jpg"),
            fit: BoxFit.cover
          )
        ),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                width: MediaQuery.of(context).size.width*.9,
                height: MediaQuery.of(context).size.height*.28,
                decoration: 
                BoxDecoration(
                 // shape: BoxShape.circle,
                  // image: DecorationImage(
                  //   image: 
                  //   ExactAssetImage("images/FNELOGOTrans.png")
                  // )
                ),
                child: AnimatedSplashScreen(
          duration: 3000,
          centered: true,
          splash: Image.asset("images/FNELOGOTrans.png",
           width: MediaQuery.of(context).size.width*.9,
                height: MediaQuery.of(context).size.height*.5,
          ),
          nextScreen: intro(),
          splashTransition: SplashTransition.fadeTransition,
         // pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.transparent
        )
 
              ),
                ],
              ),
            
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text("FNE",style: TextStyle(
              //       color: green,
              //       fontFamily: "textfonts",
              //       fontSize: 40
              //     ),)
              //   ],
              // ),
              
              ],
            )),
       
    );
  }
}
