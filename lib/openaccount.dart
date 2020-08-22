import 'package:flutter/material.dart';
import 'package:fnetrading/login.dart';
import 'package:fnetrading/shareholdingpattern.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
import 'package:fnetrading/utils/homeappbar.dart';
import 'package:fnetrading/utils/investorportal.dart';
import 'package:fnetrading/utils/routes.dart';

import 'auditcommittee.dart';
import 'directosprofile.dart';
import 'electionsdirector.dart';
import 'externalauditor.dart';
import 'investoreducation.dart';
import 'investorinfo.dart';
import 'kseindex.dart';
import 'legaladvisor.dart';

class OpenAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OpenAccount();
  }
}

class _OpenAccount extends State<OpenAccount> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: CustomAppbar("Open An Account", 100),
      body: SingleChildScrollView(
        child:      Container(
        width: MediaQuery.of(context).size.width,
       // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: darkblue,
          image: DecorationImage(
            image: ExactAssetImage("images/images.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.darken),
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Account Opening Form (Individual)", 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Account Opening Form (Corporate)", 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("KYC Application Form (Individual)", 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("KYC Application Form (Corporate)", 4),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Sahulat Account Opening Form", 5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Download Risk Disclousure Form here", 6),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Downlad KYC / CDD checklist form here",7),
              ],
            ),
         
          ],
        ),
      ),
 
      )
    );
  }

  Widget options(String text, int id) {
    return GestureDetector(
        onTap: () {
          // if (id == 1) {
          //   AppRoutes.push(context, Login());
          // } else if (id == 2) {
          //   AppRoutes.push(context, KSEINDEX());
          // } else if (id == 3) {
          //   AppRoutes.push(context, InvestorPortal());
          // } else if (id == 4) {
          //   AppRoutes.push(context, ExternalAuditor());
          // } else if (id == 5) {
          //   AppRoutes.push(context, LegalAdvisor());
          // }
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: backgroundcolor),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(
                    "$text",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: backgroundcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: backgroundcolor,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
