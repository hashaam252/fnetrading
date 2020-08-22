import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
class LegalAdvisor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LegalAdvisor();
  }

}
class _LegalAdvisor extends State<LegalAdvisor>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       backgroundColor: white,
       appBar: CustomAppbar("Legal Advisor", 100),
       body: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Column(
           children: <Widget>[
         Padding(
           padding: EdgeInsets.only(top:20,left:10,right:10),
           child:     Row(
               mainAxisAlignment: MainAxisAlignment.center,
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
  child: Text("Lashari & Company Advocates, Lahore.",style: TextStyle(
                color: darkblue,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
),
               ],
             ),
         
         ), 
           ],
         ),
       ),
    );
  }
  
}