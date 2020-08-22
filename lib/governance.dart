import 'package:flutter/material.dart';
import 'package:fnetrading/shareholdingpattern.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
import 'package:fnetrading/utils/homeappbar.dart';
import 'package:fnetrading/utils/routes.dart';

import 'auditcommittee.dart';
import 'directosprofile.dart';
import 'electionsdirector.dart';
import 'externalauditor.dart';
import 'legaladvisor.dart';

class Governance extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Governance();
  }
}

class _Governance extends State<Governance> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: CustomAppbar("Governance", 100),
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
                options("Board of Directors", 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Election of Directors", 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("ShareHolding Pattern", 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("External Auditor", 4),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Legal Advisor", 5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                options("Audit Committee", 6),
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
            AppRoutes.push(context, DirectorProfile());
          } else if (id == 2) {
            AppRoutes.push(context, ElectionDirector());
          } else if (id == 3) {
            AppRoutes.push(context, ShareHolderPattern());
          } else if (id == 4) {
            AppRoutes.push(context, ExternalAuditor());
          }
          else if(id==5)
          {
            AppRoutes.push(context, LegalAdvisor());
          }
          else if(id==6)
          {
            AppRoutes.push(context, AuditCommittee());
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
