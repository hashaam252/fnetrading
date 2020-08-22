import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/routes.dart';

import 'livemarketplace.dart';
class Login extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
  
}
class _Login extends State<Login>
{
  bool register=false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: white,
      body:SingleChildScrollView(
        child: register==true?
        SignUpform()
        :loginform()
      ),
    );
  }
  Widget loginform()
  {
    return      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top:20),
                width: MediaQuery.of(context).size.width*.5,
                height: MediaQuery.of(context).size.height*.26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: 
                    ExactAssetImage("images/FNELOGOTrans.png")
                  )
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
                Container(
                  width: MediaQuery.of(context).size.width*.85,
                  height: MediaQuery.of(context).size.height*.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xfff2f2f2)
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Login",style: TextStyle(
                            color: darkblue,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),)
                        ],
                      ),
                     SizedBox(
                        height: MediaQuery.of(context).size.height*.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _textfield("Email")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _textfield("Password")
                        ],
                      ),
                  SizedBox(
                        height: MediaQuery.of(context).size.height*.08,
                      ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       GestureDetector(
                         onTap: ()
                         {
                           AppRoutes.push(context, MarketPlace());
                         },
                         child: Container(
                           width: MediaQuery.of(context).size.width*.35,
                           height: MediaQuery.of(context).size.height*.06,
                           decoration: BoxDecoration(
                             color: darkblue,
                             borderRadius: BorderRadius.all(Radius.circular(12))
                           ),
                           child: Center(
                             child: Text("Log In",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),),
                           ),
                         ),
                       ),
                     ],
                   ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      register=true;
                    });
                  },
                  child: Text("Register",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                ),
                SizedBox(
              width:MediaQuery.of(context).size.width*.1
            ),
              ],
            ),
            ],
          ),
        );
  }
 
  Widget SignUpform()
  {
    return      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top:20),
                width: MediaQuery.of(context).size.width*.5,
                height: MediaQuery.of(context).size.height*.26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: 
                    ExactAssetImage("images/FNELOGOTrans.png")
                  )
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
                Container(
                  width: MediaQuery.of(context).size.width*.85,
                  height: MediaQuery.of(context).size.height*.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xfff2f2f2)
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Register",style: TextStyle(
                            color: darkblue,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),)
                        ],
                      ),
                     SizedBox(
                        height: MediaQuery.of(context).size.height*.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _textfield("Email")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _textfield("Phone No")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _textfield("Password")
                        ],
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _textfield("Confirm Password")
                        ],
                      ),
                 
                  SizedBox(
                        height: MediaQuery.of(context).size.height*.02,
                      ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       GestureDetector(
                         onTap: ()
                         {

                         },
                         child: Container(
                           width: MediaQuery.of(context).size.width*.35,
                           height: MediaQuery.of(context).size.height*.06,
                           decoration: BoxDecoration(
                             color: darkblue,
                             borderRadius: BorderRadius.all(Radius.circular(12))
                           ),
                           child: Center(
                             child: Text("Sign Up",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),),
                           ),
                         ),
                       ),
                     ],
                   ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      register=false;
                    });
                  },
                  child: Text("Login",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                ),
                SizedBox(
              width:MediaQuery.of(context).size.width*.1
            ),
              ],
            ),
            ],
          ),
        );
  }
 
  Widget _textfield(String hint)
  {
    return Container(
     
      margin: EdgeInsets.only(top:12),
      width: MediaQuery.of(context).size.width*.65,
      height: MediaQuery.of(context).size.height*.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(color:darkblue),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(
           hint=="Email"?
            Icons.mail:
            hint=="Phone No"?
            Icons.phone
            :Icons.lock,
            color: darkblue,size: 20,),
          hintText: "$hint"
        ),
      ),
    );
  }
}