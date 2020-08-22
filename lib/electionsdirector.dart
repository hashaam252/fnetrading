import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
class ElectionDirector extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ElectionDirector();
  }
}
class _ElectionDirector extends State<ElectionDirector>
{
  int selected=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("Election of Directors", 100),
      
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
        notice(),
        electionheading("NEXT ELECTION DATE","July 01, 2022"),
         electionheading("LAST ELECTION DATE","July 01, 2019"), 
          ],
        ),
      ),
      ),
      );
  }
Widget electionheading(String text,String electionDate)
{
  return Container(
    padding: EdgeInsets.only(left:15,right:15),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width*.95,
    height: MediaQuery.of(context).size.height*.2,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: darkblue,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("$text",
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 18,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  ),
  SizedBox(
    height: 10,
  ),
          Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("$electionDate",
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: green,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
 
 
      ],
    ),
  );
}


Widget notice()
{
  return         Container(
    padding: EdgeInsets.only(left:15,right:15,top:10),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width*.95,
    height: MediaQuery.of(context).size.height*.3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: darkblue,
    ),
    child: Column(
      children: <Widget>[
         Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("Notice of Election of Directors",
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: white,
      ),),
      ),
    ],
              ),
              SizedBox(
                height: 10,
              ),
                Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      Flexible(
        child: Text("Notice of Election of Directors will be posted at the time of next election of directors.",
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  ),
 
         Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width*.06,
        height: MediaQuery.of(context).size.height*.05,
        decoration: BoxDecoration(
          color: green,
          shape: BoxShape.circle
        ),
        child: Center(
          child: Icon(Icons.keyboard_arrow_right,color: white,size: 20,),
        ),
      ),
      SizedBox(
                width: MediaQuery.of(context).size.width*.04,
              ),
      Flexible(
        child: Text("Proxies",
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  ),
          Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
       Container(
        width: MediaQuery.of(context).size.width*.06,
        height: MediaQuery.of(context).size.height*.05,
        margin: EdgeInsets.only(bottom:MediaQuery.of(context).size.height*.05),
        decoration: BoxDecoration(
          color: green,
          shape: BoxShape.circle
        ),
        child: Center(
          child: Icon(Icons.keyboard_arrow_right,color: white,size: 20,),
        ),
      ),
      Flexible(
        child: Text("Profile of candidates contesting elections will be uploaded at the time of next Election of Directors",

        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
 
 
      ],
    ),
  );
}

}