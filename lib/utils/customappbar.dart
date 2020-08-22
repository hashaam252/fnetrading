
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

import 'Colors.dart';


class CustomAppbar extends StatelessWidget implements PreferredSizeWidget
{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  double height;
  String title;
GlobalKey<InnerDrawerState> _innerDrawerKey = GlobalKey<InnerDrawerState>();    


  CustomAppbar(String _title, double _height)
  {
    // leading= _leading;
    height= _height;
    title=_title;
  }
   
    // void _toggle()
    // {
    //    _innerDrawerKey.currentState.toggle(
    //    // direction is optional 
    //    // if not set, the last direction will be used
    //    //InnerDrawerDirection.start OR InnerDrawerDirection.end                        
    //     direction: InnerDrawerDirection.end 
    //    );
    // }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      key: _innerDrawerKey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.1,
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
       // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height*.05,
          ),
          Row(
            
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: ()
                {
                 Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back_ios,color: white,
              size: 25,
              ),
              ),
            
              SizedBox(
                width: 25,
              ),
              Text("$title",style: TextStyle(
                color: white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
             
              
            ],
          ),
        ],
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}