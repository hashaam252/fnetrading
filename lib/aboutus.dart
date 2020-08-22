import 'package:flutter/material.dart';
import 'package:fnetrading/ContactUs.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
class AboutUs extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _about();
  }
  
}
class _about extends State<AboutUs>
{
  int selected=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
  appBar: CustomAppbar("About-Us", 100),
  body: SingleChildScrollView(
    child:  Container(
    width: MediaQuery.of(context).size.width,
   // height: MediaQuery.of(context).size.height,
    child: Column(
      children: <Widget>[
         heading("Introduction"),
            info("The Company was incorporated in February 1995 and was enlisted on Pakistan Stock Exchange Limited (formerly Karachi Stock Exchange Limited) in 2004. It is traded on the stock market under the symbol 'FNEL'.The company is engaged in the business of Brokerage and was awarded the Top Companies Award by Pakistan Stock Exchange Limited (formerly Karachi Stock Exchange Limited) in 2006.\nCompany Registration No. 0033402\nCompany NTN No. 0801362-4"),
          heading("The Management"),
            info("The Company is managed by a dedicated team of highly qualified and experienced professionals and well-reputed sponsors. The management team carries vast experience of the capital markets and enjoys a competitive edge with its risk management skills to make prudent investment decisions taken on rational equity market analysis. The key members of the management team are as under"),
          SizedBox(
            height: 10,
          ),
         
             directorheading("Mr. Ali Aslam Malik, CEO","Mr. Ali Aslam Malik is the Chief Executive of the Company. He obtained his Masters in Commerce from Hailey College of Commerce, University of Punjab, Lahore. He attended numerous workshops and courses on Investment, Risk Management, Management Information Systems, Corporate & Quality Management local and national"),
        
        directorheading("Mrs. Ammara Zakriya, Chief financial officer","Mrs. Ammara Zakriya is a qualified chartered accountant from Institute of Chartered Accountants of Pakistan and member of Association of Certified Chartered Accountants, UK (ACCA). She has audit and advisory services experience of around 4 years of various companies including financial institutions sectors."),
       
        directorheading("Mr. Amir Shehzad, Exective Director","Mr. Amir Shehzad is a Graduate and has more than Ten years of working experience as an Equity Trader and Portfolio Manager. He has a deep understanding of Capital Market and has a detailed knowledge of Stock Market, relevant rules and Regulation of Stock Exchanges and Securities and Exchange Commission of Pakistan."),
       
        directorheading("Mr. Ali Nadeem, Head of Sale","Mr. Ali Nadeem holds the degree of MBA and brings vast experience of working in Capital Markets. Prior to joining First National Equities Limited, he has worked with National Asset Management Company in the capacity of Chief Investment Officer. His valuable experience of the market is an asset for the company."),
     
        directorheading("Mr. Ali Raza, Compliance Officer","Mr. Ali Raza is an experienced professional with proven record of more than twenty-five years of experience of stock and capital market and is associated with a leading brokerage house at various senior management level positions. He has successfully established and flourished two major Brokerage Houses in Capital Markets."),

        SizedBox(
          height: 20,
        ),
      ],
    )
    ,
  ),
 
  ),
    );
  }
    Widget info(String text)
{
  return     Padding(
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
  child: Text("$text",style: TextStyle(
                color: darkblue,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
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