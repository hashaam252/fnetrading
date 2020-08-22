import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';

class InvestorEducation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InvestorEducation();
  }
}

class _InvestorEducation extends State<InvestorEducation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("Investor Education", 100),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            heading("Investor Guidelines"),
            info("SECP Complaint Cell"),
            info("PSX Lodging a Complaint"),
            info("Arbitration"),
            info("PSX Rule Book - English"),
            info("PSX Rule Book - Urdu"),
            info("Investor Guide by SECP"),
          ],
        ),
      ),
    );
  }
Widget info(String text)
{
  return Container(
    padding: EdgeInsets.only(top:10,left:15,right:15),
    width: MediaQuery.of(context).size.width,
   // height: MediaQuery.of(context),
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
           Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(left:15,right:10),
        width: MediaQuery.of(context).size.width*.08,
        height: MediaQuery.of(context).size.height*.06,
        decoration: BoxDecoration(
          color: green,
          shape: BoxShape.circle
        ),
        child: Center(
          child: Icon(Icons.keyboard_arrow_right,color: white,size: 25,),
        ),
      ),
Flexible(
  child: Text("$text",
  textAlign: TextAlign.center,
  style: TextStyle(
                color: darkblue,
                
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
),
               ],
             ),
        
     ],
   ),
  );
}
  Widget heading(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width * .5,
          // height: MediaQuery.of(context).size.height*.06,
          decoration: (BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: darkblue)),
          child: Center(
            child: Text(
              "$text",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

}
