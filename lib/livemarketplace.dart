import 'package:flutter/material.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/customappbar.dart';
import 'package:lazy_data_table/lazy_data_table.dart';
class MarketPlace extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MarketPlace();
  }
}
class _MarketPlace extends State<MarketPlace>
{
  List<String> header=[
    "Mkt",
    "Symbol",
    "Flag",
    "Change",
    "Buy Vol",
    "Buy",
    "Sell",
    "Sell Vol",
    "Total Vol",
    "Last Price",
    "Last Vol"
  ];
  List<String> rowdata=[
    "REG",
    "FCCL",
    "false",
    "-0.31",
    "0",
    "0",
    "19.71",
    "18,500",
    "6,349,000",
    "19.71",
    "10,000",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbar("Live Market Indices", 100),
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
  rowHeaderBuilder: (i) => Center(child: Text("Row: ${i + 1}",style: TextStyle(
    color: white
  ),)),
  dataCellBuilder: (i, j) => Center(child: Text(" ${rowdata[j]}",style: TextStyle(
    color: white
  ),)),
  cornerWidget: Center(child: Text("Market",style: TextStyle(
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
        color: Color(0xfff2f2f2),
      ),
      child: Column(
        children: <Widget>[
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Mkt: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                
                Text("REG",
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
            Text("Symbol: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("FNEL",
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
            Text("Flag: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("true",
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
            Text("Change: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("0.1",
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
            Text("Buy Vol: ",
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
       SizedBox(
         height: 8,
       ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: <Widget>[
            Text("Buy: ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                  fontSize: 18,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),),
                Text("13.26",
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