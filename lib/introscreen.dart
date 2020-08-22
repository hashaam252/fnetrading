import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';
class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _animationName = "Run";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text("abcd")),
        body: Stack(children: <Widget>[
          Positioned.fill(
            
              child: NimaActor("images/sadsa.nima",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  
                  animation: _animationName,
                  //animation: "Run",
                  mixSeconds: 0.5, completed: (String animationName) {
            setState(() {
              // Return to idle.
              _animationName = "Run";
              
            });
          })),
          Positioned.fill(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(5.0),
                  child: FlatButton(
                      child: Text("Jump"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          _animationName = "Run";
                        });
                      })),
              Container(
                  margin: const EdgeInsets.all(5.0),
                  child: FlatButton(
                      child: Text("Attack"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          _animationName = "stop";
                        });
                      })),
            ],
          ))
        ]));
  }
}