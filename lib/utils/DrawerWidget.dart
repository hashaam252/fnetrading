import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fnetrading/ContactUs.dart';
import 'package:fnetrading/governance.dart';
import 'package:fnetrading/utils/routes.dart';

import '../aboutus.dart';
import '../investor.dart';
import '../trading.dart';
import 'Colors.dart';





GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
class drawerr extends StatefulWidget
{
 
  @override
  _drawerr createState()=>new _drawerr();
}
class _drawerr extends State<drawerr>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // getuserprofile();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            
            decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage("images/images.jpg",
            ),
            fit: BoxFit.cover
          ),
              borderRadius: BorderRadius.only(
                bottomLeft:Radius.circular(20),
                bottomRight:Radius.circular(20),
                
              ),
              color: green,
            ),
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("images/FNELOGOTrans.png")
                      )
                    ),
                  ),
                ],
              ),
                ],
              ),
            ),
          ),
        
          ListTile(
            leading: Image.asset('images/president.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("Governance",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              // Navigator.of(context).push(
              //         MaterialPageRoute<void>(
              //           builder: (BuildContext context) {
              //             return Governance();
              //           },
              //         ),
              //       );
               AppRoutes.push(context,Governance());
              // var route=MaterialPageRoute(
              //     builder: (BuildContext context)=>new Profile()
              // );
              // Navigator.of(context).pop(route);
              // Navigator.of(context).push(route);
              // print('$_name, $_email');
            },
          ),
          ListTile(
            leading: Image.asset('images/investor.png',
             color: darkblue,
            width: 30,height: 30,),
            title: Text("Investor",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              AppRoutes.push(context, Investor());
              // var route=MaterialPageRoute(
              //     builder: (BuildContext context)=>new sales()
              // );
              // Navigator.of(context).pop(route);
              // Navigator.of(context).push(route);
              // print('$_name, $_email');
            },
          ),
          ListTile(
            leading: Image.asset('images/trading.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("Trading",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              AppRoutes.push(context, Trading());
              // signOutGoogle();

            },
          ),
          ListTile(
            leading: Image.asset('images/value.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("Client",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              // signOutGoogle();

            },
          ),
          ListTile(
            leading: Image.asset('images/research.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("Research",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              // signOutGoogle();

            },
          ),
          ListTile(
            leading: Image.asset('images/question.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("Misc",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              // signOutGoogle();

            },
          ),
                  ListTile(
            leading: Image.asset('images/contactus.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("Contact-Us",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              AppRoutes.push(context, ContactUs());
              // signOutGoogle();

            },
          ),
    
              ListTile(
            leading: Image.asset('images/world.png',
            color: darkblue,
            width: 30,height: 30,),
            title: Text("About",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'toyshop',
            ),),
            onTap: ()
            {
              AppRoutes.push(context, AboutUs());
              // signOutGoogle();

            },
          ),
      
       
        ],
      ),
    );
  }

}