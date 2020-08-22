import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
class DirectorProfile extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DirectorProfile();
  }
}
class _DirectorProfile extends State<DirectorProfile>
{
  int selected=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("Board of Directors & Profiles", 100),
      
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            directorheading("Mr. Akhtar Chaudhary, Non-Exective Independent Director","Mr. Akhtar Chaudhary is an experienced resource with extensive experience in HR & A, Career Development and Establishment. He had been working with prestigious organizations like NTDC, Wapda, S&GA and Agri : Census Organization. He is an affiliated member of SHRM and possesses a Master's degree in Business Administration"),
        directorheading("Mr. Amir Shehzad, Exective Director","Mr. Amir Shehzad is a Graduate and has more than Eighteen years of working experience in Equity and Portfolio market. He has a deep understanding of Capital Market and has a detailed knowledge of Stock Market, relevant rules and Regulation of Stock Exchanges and Securities and Exchange Commission of Pakistan."),
       directorheading("Ms. Faaiza Tirmizi, Exective Director","Ms. Faaiza Tirmizi has more than ten years of experience in management roles of Human Resources and Project Execution. She has been a founding member of Quality enhancement and Organization development cell in many institutes and companies. Ms. Tirmizi possesses a Master’s degree in Project Management and handles the Human Resources department of First National Equities."),       
     directorheading("Mr. Abid Yousaf, Non-Exective Director","Mr. Abid Yousaf is a Computer Science Graduate from CSM Institute, Canada. He has more than Twenty years of practical experience in handling the software and I.T management."),
       directorheading("Mr. Adan Amjad Khan,Non-Exectivem Independant Director","Mr. Adan Amjad Khan is an Accounting and Finance Professional with more than five years of diversified experience. He served in a Chartered Accountant Firm as Senior Audit Associate with responsibilities including planning, supervision, execution and finalization of various Assurance Engagements. He was also engaged in business development, professional content development and interpersonal skills training. He is also enrolled in Data Bank of Directors maintained by PICG."),
    directorheading("Mr. Tahir Waheed, Non-Exective Director","Mr. Tahir Waheed had been a seasoned professional of Customer Care, Sales and Marketing. He had been a strategic management specialist for Sales and Business Changing Environment with abilities to multitask."),
       
        SizedBox(
          height: 20,
        ),
          ],
        ),
      ),
      ),
      );
  }
Widget detail(String text)
{
  return Padding(
    padding: EdgeInsets.only(top:10,left: 15,right:15),
  child:
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Text("$text",style: TextStyle(
        fontSize: 16,
        color: grey,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
  );
}
Widget heading(String text,int index)
{
  return  GestureDetector(
    onTap: ()
    {
      setState(() {
        selected=index;
      });
    },
    child:    Container(
    padding: EdgeInsets.only(left:15,right:15),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width*.95,
    height: MediaQuery.of(context).size.height*.06,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: green
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
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),),
      ),
    ],
  )
 
      ],
    ),
  )

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
             Text("$detail",
             style: TextStyle(
        fontSize: 16,
        color: white,
        fontStyle: FontStyle.italic
      ),
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