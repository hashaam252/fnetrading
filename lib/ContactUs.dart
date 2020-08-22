import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';


class ContactUs extends StatefulWidget {
  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUs> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _descriptionController=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController contact=TextEditingController();




@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: white,
       appBar: CustomAppbar("Contact-Us", 100),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _contactUsText(),
            _contactDetails(),
            _sendMessgeSection(),
            GestureDetector(
              onTap: ()
              {
                              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                        color: darkblue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
            ),
            ),
            // _title("OR"),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 5),
            //   width: MediaQuery.of(context).size.width / 2,
            //   child: BottomButton(
            //     name: "Live Chat",
            //     ontap: () {
            //       AppRoutes.push(context, Conversation());
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _contactUsText() {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context,).size.height*.25,
        color: Colors.white,
        child: Text(
        " 179-B, Abu Bakar Block, New Garden Town, Lahore. \nJaguar Technologies Inc. CANADA.",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ));
  }

  Widget _textFormField(String text, TextAlign align, int maxlin,_controller) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: TextFormField(
        
        controller: _controller,
//        controller:
//        text == "Your Email" ? emailController : descriptionController,
        keyboardType: _controller==contact?
        TextInputType.number
        :TextInputType.multiline,
        textAlign: align,
        maxLines: maxlin,
        decoration: InputDecoration(
            isDense: true,
            enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: "$text",
            hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  Widget _title(String text) {
    return Container(
      child: Text("$text",
          style: TextStyle(
              color: blue,
              fontFamily: 'Roboto',
              fontSize: 15,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _title2(String text) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 5),
      child: Text("$text",
          style: TextStyle(
              color: blue,
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _contactDetails() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _title("Email"),
          _title2(
            "Info@kingbhai.com",
          ),
          SizedBox(
            height: 10,
          ),
          _title("Phone #"),
          _title2("+92 42 35440455"),
          _title2("+92 42 35440457"),
          _title2("+92 42 35440457"),
        ],
      ),
    );
  }

  Widget _sendMessgeSection() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height*.12 ),
          _title("Your Message"),
          _textFormField("Your Email", TextAlign.center, 1,_emailController),
          _textFormField("Your Name", TextAlign.center, 1,name),
           _textFormField("Your Contact", TextAlign.center, 1,contact),
          _textFormField("Write here....", TextAlign.start, 6,_descriptionController),
        ],
      ),
    );
  }
}