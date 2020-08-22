import 'package:flutter/material.dart';
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
import 'legaladvisor.dart';

class Investor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Investor();
  }
}

class _Investor extends State<Investor> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: CustomAppbar("Investor", 100),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                options("Investor Information", 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Investor Education", 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Investor Portal/Relation", 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Investor Awareness Guide", 4),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Research", 5),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget options(String text, int id) {
    return GestureDetector(
        onTap: () {
          if (id == 1) {
            AppRoutes.push(context, InvestorInfo());
          } else if (id == 2) {
            AppRoutes.push(context, InvestorEducation());
          } else if (id == 3) {
            AppRoutes.push(context, InvestorPortal());
          } else if (id == 4) {
            AppRoutes.push(context, ExternalAuditor());
          } else if (id == 5) {
            AppRoutes.push(context, LegalAdvisor());
          }
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
                  Text(
                    "$text",
                    style: TextStyle(
                        color: backgroundcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
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
