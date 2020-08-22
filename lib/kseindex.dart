import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
import 'package:lazy_data_table/lazy_data_table.dart';
class KSEINDEX extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _KSEINDEX();
  }
}
class _KSEINDEX extends State<KSEINDEX>
{
  List<String> header=[
    "Company Name",
    "High Rate",
    "Low Rate",
    "Free Flat",
    "Change %",
    "Current Market",
    "Sell",
    "Sell Vol",
    "Total Vol",
    "Last Price",
    "Last Vol"
  ];
  List<String> rowdata=[
    "Unity Foods",
    "3.3",
    "3.33",
    "36,942,725",
    "0.01",
    "123M",
    "13.4",
    "500",
    "22,500",
    "13.3",
    "1000",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("KSE 100 Index", 100),
      backgroundColor: darkblue,
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
                searchBar(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
                       Expanded(
              child: LazyDataTable(
                
  rows: 15,
  
  columns: header.length,
  tableDimensions: DataTableDimensions(
    
    cellHeight: 50,
    cellWidth: 100,
    columnHeaderHeight: 50,
    rowHeaderWidth: 75,
  ),
  tableTheme: DataTableTheme(
    columnHeaderBorder: Border.all(color: darkblue),
    rowHeaderBorder: Border.all(color: darkblue),
    cellBorder: Border.all(color: Colors.black12),
    cornerBorder: Border.all(color: Colors.black38),
    columnHeaderColor: Colors.white60,
    rowHeaderColor: Colors.white60,
    cellColor: blue,
    cornerColor: darkblue,
  ),
  columnHeaderBuilder: (i) => Center(child: 
  Text("${header[i]}",style: TextStyle(
    color: white
  ),)
  ),
  rowHeaderBuilder: (i) => Center(child: Text("Row: ${i + 1}",
  textAlign: TextAlign.center,
  style: TextStyle(
    color: white
  ),)),
  dataCellBuilder: (i, j) => Center(child: Text(" ${rowdata[j]}",style: TextStyle(
    color: white
  ),)),
  cornerWidget: Center(child: Text("KSE 100",style: TextStyle(
    color: white
  ),)),
),
              // ListView.builder(itemBuilder: (BuildContext ctx,int index)
              // {
              //   return items();
              // },
              // itemCount: 15,
              // ),
            ),
 
            // Expanded(
            //   child: ListView.builder(itemBuilder: (BuildContext ctx,int index)
            //   {
            //     return items();
            //   },
            //   itemCount: 15,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
  Widget items()
  {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left:15,right: 15,top:10),
      width: MediaQuery.of(context).size.width*.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color:Color(0xfff2f2f2),
      ),
      child: Column(
        children: <Widget>[
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Company Name: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                
                Text("Unity Foods Ltd",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("High Rate: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("3.3",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Low Rate: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("3.33",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Free Flat: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("36,942,725",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Change %: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("0.01",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Current Market Capitalization: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("123M",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Sell: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("13.4",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Sell Vol: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("500",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Total Vol.: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("22,500",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Last Price: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("13.3",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Last Vol: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("1,000",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),  
       
        ],
      ),
    );
  }
  Widget searchBar()
  {
    return Container(
      margin: EdgeInsets.only(top:15),
      width: MediaQuery.of(context).size.width*.8,
      height: MediaQuery.of(context).size.height*.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xfff2f2f2),
        border: Border.all(color:darkblue)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Enter Symbol",
          prefixIcon: Icon(Icons.search,color: darkblue,size: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(8)
        ),
      ),
    );
  }
}