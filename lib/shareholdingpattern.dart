import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
class ShareHolderPattern extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ShareHolderPattern();
  }
}
class _ShareHolderPattern extends State<ShareHolderPattern>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: white,
    appBar: CustomAppbar("ShareHolder Pattern", 100),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                items(),
                
              ],
            ),
         Expanded(
           child: ListView.builder(itemBuilder: (BuildContext context,int index)
           {
             return itemList();
           },
           itemCount: 15,
           ),
         ),
          ],
        ),
      ),
    );
  }
  Widget items()
  {
    return Container(
      padding: EdgeInsets.only(left:10,right:10,top: 5),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.1,
      color: darkblue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text("No. of Shares",style: TextStyle(
                  fontSize: 16,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Expanded(
                flex: 1,
                child:Container(
                  margin: EdgeInsets.only(bottom:25),
                  width: MediaQuery.of(context).size.width*.26,
                  height: MediaQuery.of(context).size.height*.06,
                  child:     Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Text("Shareholding",style: TextStyle(
                  fontSize: 14,
                   color: white,
                  fontWeight: FontWeight.bold,
                ),),
               
                  ],
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                  width: MediaQuery.of(context).size.width*.3,
                  height: 2,
                  color: white,
                ),
                      ],
                    ),
                                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("From",style: TextStyle(
                  fontSize: 16,
                   color: white,
                  fontWeight: FontWeight.bold,
                ),),
                Text("To",style: TextStyle(
                  fontSize: 16,
                   color: white,
                  fontWeight: FontWeight.bold,
                ),),
                  ],
                )
 
                  ],
                )
             
                ),
              ),
              Expanded(
                flex: 1,
                child: Text("\t\t\tT.Shares held",style: TextStyle(
                  fontSize: 16,
                   color: white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
Widget itemList()
{
  return Container(
    padding: EdgeInsets.only(top:10,right:10,left:10),
    margin: EdgeInsets.only(top:10),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*.06,
     color: Color(0xfff2f2f2),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Row(
        children: <Widget>[
           SizedBox(
          width: MediaQuery.of(context).size.width*.02,
        ),
            Expanded(
          flex: 2,
          child:Text("228",style: TextStyle(
                  fontSize: 16,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
        ),
        Expanded(
          flex: 1,
          child:Text("101",style: TextStyle(
                  fontSize: 16,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*.08,
        ),
        Expanded(
          flex: 1,
          child:Text("500",style: TextStyle(
                  fontSize: 16,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*.05,
        ),
        Expanded(
          flex: 1,
          child:Text("43298",style: TextStyle(
                  fontSize: 16,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
        ),
      
        ],
      ),
      ],
    ),
  );
}

}