import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
class CommissionStruture extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CommissionStruture();
  }
  
}
class _CommissionStruture extends State<CommissionStruture>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: CustomAppbar("Commission Structure", 100),
       body: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
            
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 notice()
               ],
             ),
             Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: <Widget>[
     Address(),
   ],
 ),
  Container(
    height: MediaQuery.of(context).size.height*.2,
  ),
           ],
         ),
       ),
    );
  }
  Widget notice()
{
  return         Container(
    padding: EdgeInsets.only(left:15,right:15,top:10),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width*.95,
    //height: MediaQuery.of(context).size.height*.3,
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
        child: Text("First National Equities Ltd.",
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
        child: Text("First National Equities Ltd. Our aim of providing convenience, control and reduced cost to clients makes our online trading platform the perfect choice.",
        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  ),
 SizedBox(
                height:MediaQuery.of(context).size.height*.12,
              ),
 
  
 SizedBox(
   height: 30,
 ),
      ],
    ),
  );
}

  Widget Address()
{
  return         Container(
    padding: EdgeInsets.only(left:15,right:15,top:10),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width*.95,
    //height: MediaQuery.of(context).size.height*.3,
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
        child: Text("Headoffice:\nFNE House, 179-B,\n Abu Bakar Block New Garden town, Lahore",

        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
       ,   Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("Phone: 042-35843721-7",

        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
       ,   Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("Fax: 042-35843730",

        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
       ,   Row(
  //  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("Email: info@fnetrade.com",

        textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
 ,
 SizedBox(
   height: 30,
 ),
      ],
    ),
  );
}

}