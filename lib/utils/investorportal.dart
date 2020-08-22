import 'package:flutter/material.dart';

import 'Colors.dart';
import 'customappbar.dart';
class InvestorPortal extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InvestorPortal();
  }
}
class _InvestorPortal extends State<InvestorPortal>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("Investors Portal/Relation", 100),
      body:SingleChildScrollView(
        child:    Container(
        width: MediaQuery.of(context).size.width,
      //  height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            directorheading("Investor Grievance","Please email your complains at info@fnetrade.com"),
           directorheading("Investor Pending Complaints against the brokrage firm","No pending complaints found"),
           directorheading("Contact Details of Person(s) Designated to Handle Investors Complaints","Name: Mr. Faisal Raheem\nContact No: +92-42-35843721\nupto 7 Email:faisalraheem@fnetrade.com"),
           directorheading("Detail of Penal Actions taken by Exchanges & SECP against the brokerage firms","Details not found."),
           directorheading("Notice of Annual General Meeting","Notice of Annual General Meeting"),
           directorheading("SECP Online Complaint Lodge Link","DISCLAIMER: “In case you complaint has not been properly redressed by us, you may lodge complaint with Securities and Exchange Commission of Pakistan(the “SECP”). However, please note that SECP will entertain only those complaints which were at first directly requested to be redressed by the company and the company has failed to redress the same. Further, the complaints that are not relevant to SECP’s regulatory domain/competence shall not be entertained by the SECP.”"),
            directorheading("Notice of Annual General Meeting","Notice of Annual General Meeting"),
          ],
        ),
      ),
   
      ), 
    );
  }
  Widget info(String text)
{
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(top:10,left:15,right:15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
  
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
          width: MediaQuery.of(context).size.width * .8,
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
Widget directorheading(String header,String detail)
{
  return  GestureDetector(
    onTap: ()
    {
     
    },
    child:    Container(
    padding: EdgeInsets.only(left:15,right:15),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width*.95,
   // height: MediaQuery.of(context).size.height*.3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: darkblue
    ),
    child:  ExpansionTile(
          
            title: Text("$header",
            style: TextStyle(
        fontSize: 18,
        color: white,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic
      ),
            ),
            //subtitle: 
            backgroundColor: darkblue,
           children: <Widget>[
                              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(left:15,right:10),
        width: MediaQuery.of(context).size.width*.05,
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
  child: Text("$detail",style: TextStyle(
                color: white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
),
               ],
             ),
  
            
           ],
          ),
    
    
  //   Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //        Row(
  //   mainAxisAlignment: MainAxisAlignment.center,
  //   children: <Widget>[
  //     Flexible(
  //       child: Text("$text",
  //       textAlign: TextAlign.center,
  //       style: TextStyle(
  //       fontSize: 16,
  //       color: white,
  //       fontStyle: FontStyle.italic
  //     ),),
  //     ),
  //   ],
  // )
 
  //     ],
  //   ),
 
  )

  );
}

}