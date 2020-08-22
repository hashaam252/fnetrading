import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:fnetrading/innerdrawer.dart';
import 'package:fnetrading/subcribers.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/DrawerWidget.dart';
import 'package:fnetrading/utils/homeappbar.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Dashboard();
  }
}

class _Dashboard extends State<Dashboard> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation animation;
  String type = "Select", interest = "Select";
  Map<String, double> dataMap = new Map();

  List<String> contacttype = [
    "Select",
    "",
  ];
  List<String> interesttype = [
    "Select",
    "",
  ];
  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "2008",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2009",
      subscribers: 11000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2010",
      subscribers: 12000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2011",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2012",
      subscribers: 8500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2013",
      subscribers: 7700000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2014",
      subscribers: 7600000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2015",
      subscribers: 5500000,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataMap.putIfAbsent("Others", () => 10);
    dataMap.putIfAbsent("Oil and Gas", () => 8);
    dataMap.putIfAbsent("Food and personal Care", () => 5);
    dataMap.putIfAbsent("Cement", () => 3);
    dataMap.putIfAbsent("Tobacco", () => 7);
    dataMap.putIfAbsent("Commercial Bank", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (SubscriberSeries series, _) => series.year,
          measureFn: (SubscriberSeries series, _) => series.subscribers,
          colorFn: (SubscriberSeries series, _) => series.barColor)
    ];
    // TODO: implement build
    return Scaffold(
     // appBar: homeappbar("First National Equities Limited", 100),
     // drawer: customDrawer(),
      body: 
      SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("images/images.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "PSX Online Stock Trading",
                              style: TextStyle(color: white, fontSize: 24),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "First National Equities Limited(FNEL)",
                              style: TextStyle(color: white, fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "TREC Holder Pakistan Stock Exchange LTD",
                              style: TextStyle(color: green, fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // SizedBox(
                              //   width: MediaQuery.of(context).size.width * .05,
                              // ),
                              Text(
                                "(PSX)",
                                style: TextStyle(color: green, fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  search();
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width * .35,
                                  height:
                                      MediaQuery.of(context).size.height * .08,
                                  decoration: BoxDecoration(
                                    color: green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "SUBSCRIPTION/INQUIRY",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       flex: 1,
              //       child: Container(
              //         width: MediaQuery.of(context).size.width * .25,
              //         height: MediaQuery.of(context).size.height * .05,
              //         color: white,
              //         child: Center(
              //           child: Text(
              //             "Data Feed",
              //             style: TextStyle(
              //                 color: green,
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: MediaQuery.of(context).size.width * .7,
              //       height: MediaQuery.of(context).size.height * .06,
              //       child: ListView.builder(
              //           itemBuilder: (BuildContext ctx, int indx) {
              //             return datafied(indx);
              //           },
              //           scrollDirection: Axis.horizontal,
              //           itemCount: 10),
              //     ),
              //   ],
              // ),
      
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Who We Are?",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 2,
                    color: green,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        "Our vision is connecting people, ideas and capital, we will be our client's first choice for achieving their financial aspirations. We put interest of our stakeholders above our own, and measure our success by how much we help them in achieving theirs. We are providing a robust Online Stock Trading Platform in Pakistan. FNEL is TREC holder of Pakistan Stock Exchange (PSX).",
                        style: TextStyle(
                          color: grey,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  datarow(),
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: MediaQuery.of(context).size.height * .2,
                    child: BezierChart(
                      bezierChartScale: BezierChartScale.CUSTOM,
                      xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
                      series: const [
                        BezierLine(
                          data: const [
                            DataPoint<double>(value: 10, xAxis: 0),
                            DataPoint<double>(value: 130, xAxis: 5),
                            DataPoint<double>(value: 50, xAxis: 10),
                            DataPoint<double>(value: 150, xAxis: 15),
                            DataPoint<double>(value: 75, xAxis: 20),
                            DataPoint<double>(value: 0, xAxis: 25),
                            DataPoint<double>(value: 5, xAxis: 30),
                            DataPoint<double>(value: 45, xAxis: 35),
                          ],
                        ),
                      ],
                      config: BezierChartConfig(
                        verticalIndicatorStrokeWidth: 5.0,
                        verticalIndicatorColor: grey,
                        xLinesColor: grey,
                        showVerticalIndicator: true,
                        backgroundColor: green,
                        snap: false,
                      ),
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
                  Text(
                    "PSX VOLUME LEADERS",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 50,
                    height: 2,
                    color: green,
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
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .3,
                    color: white,
                    child: charts.BarChart(
                      series,
                      animate: true,
                      barGroupingType: charts.BarGroupingType.stacked,
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
                  Text(
                    "PSX Active Sectors",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: 50,
                    height: 2,
                    color: green,
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
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .25,
                      child: PieChart(
                        dataMap: dataMap,
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 12.0,
                        chartRadius: MediaQuery.of(context).size.width * .8,
                        showChartValuesInPercentage: true,
                        showChartValues: true,
                        showChartValuesOutside: false,
                        chartValueBackgroundColor: Colors.grey[200],
                        colorList: [blue, green, Colors.yellow, Colors.pink],
                        showLegends: true,
                        legendPosition: LegendPosition.right,
                        decimalPlaces: 1,
                        showChartValueLabel: true,
                        initialAngle: 0,
                        chartValueStyle: defaultChartValueStyle.copyWith(
                          color: Colors.blueGrey[900].withOpacity(0.9),
                        ),
                        chartType: ChartType.disc,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget datarow() {
    return Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * .35,
        height: MediaQuery.of(context).size.height * .2,
        decoration: BoxDecoration(
          border: Border.all(color: grey),
          color: white,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Open",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "40,000",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "High",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "40,000",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Low",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "40,000",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Change",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "40,000",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  void search() {
    showDialog(
        context: context,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          contentPadding: EdgeInsets.only(top: 10.0),
          content:SingleChildScrollView(
            child:     Container(
           // padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .57,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: ExactAssetImage("images/images.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
                border: Border.all(color: purple, width: 2)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "SUBSCRIPTION/INQUIRY",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "For any query, please fill this form",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Name",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .32,
                    ),
                    Text(
                      "Phone",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .3,
                      height: MediaQuery.of(context).size.height * .06,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Name", border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .3,
                      height: MediaQuery.of(context).size.height * .06,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Phone", border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Email",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .06,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Email", border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Contact Type",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                    ),
                    Text(
                      "Interest Type",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .06,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: grey,
                              size: 40,
                            ),
                            style: TextStyle(color: Colors.black),
                            value: type,
                            items: contacttype.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (item) {
                              setState(() {
                                type = item;
                              });
                            },
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 30),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .06,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isExpanded: true,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: grey,
                              size: 40,
                            ),
                            style: TextStyle(color: Colors.black),
                            value: type,
                            items: contacttype.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (item) {
                              setState(() {
                                type = item;
                              });
                            },
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Message",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .06,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Message", border: InputBorder.none),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                      margin: EdgeInsets.only(top:10,left:5),
                      width: MediaQuery.of(context).size.width*.25,
                      height: MediaQuery.of(context).size.height*.06,
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.all(Radius.circular(12),
                      ),),
                      child: Center(
                        child: Text("Submit",style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
                      ),
                      
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
       
          )
        ));
  }

  Widget datafied(int index) {
    return Row(
      children: <Widget>[
        Icon(index.isEven ? Icons.arrow_upward : Icons.arrow_downward,
            color: index.isEven ? green : Colors.red),
        SizedBox(
          width: 5,
        ),
        Text("-0.12"),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
