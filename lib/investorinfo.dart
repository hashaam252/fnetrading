import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';

class InvestorInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InvestorInfo();
  }
}

class _InvestorInfo extends State<InvestorInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("Investor Info", 100),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        //  height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            heading("Last Five Years"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                fiveyears("2019", "2020", "Annual Report 2015")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                fiveyears(
                    "2018", "2019", "3rd Quarterly Account Reports, March 2014")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                fiveyears("2017", "2018", "Half Yearly Report")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                fiveyears("2016", "2017",
                    "1st Quarterly Account Reports, September 2014")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[fiveyears("2014", "2016", "Free Float")],
            ),
            directorheading("Stock Symbol of the Company",
                "The company is listed in Pakistan Stock Exchange Limited (formerly Karachi Stock Exchange Limited) in 2004. It is being traded on the stock market under the symbol 'FNEL' Pakistan Stock Exchange Website: www.psx.com.pk"),
            directorheading("Statutory Auditor Details",
                "IECNET S.K.S.S.S., Chartered Accountants 11 Happy Home, 38/A, Main Gulberg, Salman Ahmad Road, Lahore. Tel. +92 42 35776691-4 Email: aslam.fca@gmail.com SBP Rating"),
            directorheading(
                "NCB Auditor Detail along with NCB For Last 5 Years",
                "2019 2018 2017 2016 2015"),
            directorheading("NCB Monthly Current Year and For Last 03 Years",
                "10-2019 09-2019 08-2019 07-2019 06-2019 05-2019 04-2019 03-2019 02-2019 01-2019 12-2018 11-2018 10-2018 09-2018 08-2018 07-2018 06-2018 05-2018 04-2018 03-2018 02-2018 01-2018 12-2017 11-2017 10-2017 09-2017 08-2017 07-2017 06-2017 05-2017 04-2017 03-2017 02-2017 01-2017 12-2016 11-2016 10-2016 09-2016 08-2016 07-2016"),
            directorheading(
                "Liquid Capital Monthly Current Year and For Last 03 Years",
                "10-2019 09-2019 08-2019 07-2019 06-2019 05-2019 04-2019 03-2019 02-2019 01-2019 12-2018 11-2018 10-2018 09-2018 08-2018 07-2018 06-2018 05-2018 04-2018 03-2018 02-2018 01-2018 12-2017 11-2017 10-2017 09-2017 08-2017 07-2017 06-2017 05-2017 04-2017 03-2017 02-2017 01-2017 12-2016 11-2016 10-2016 09-2016 08-2016 07-2016"),
            directorheading(
                "Policies Procedures: CDD/KYC Policy", "Download KYC")
          ],
        ),
      )),
    );
  }

  Widget fiveyears(String startYear, String endYear, String desc) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height*.08,
      color: Color(0xfff2f2f2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$startYear-$endYear",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),
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
                child: Text(
                  "$desc",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: darkblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
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

  Widget details(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15),
          width: MediaQuery.of(context).size.width * .8,
          //  height: MediaQuery.of(context).size.height*.06,
          decoration: (BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xfff2f2f2))),
          child: Center(
              child: Flexible(
            child: Text(
              "$text",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: darkblue,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        ),
      ],
    );
  }

  Widget itemList() {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .06,
      color: Color(0xfff2f2f2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "228",
                  style: TextStyle(
                    fontSize: 16,
                    color: darkblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "101",
                  style: TextStyle(
                    fontSize: 16,
                    color: darkblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .08,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "500",
                  style: TextStyle(
                    fontSize: 16,
                    color: darkblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .05,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "43298",
                  style: TextStyle(
                    fontSize: 16,
                    color: darkblue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
