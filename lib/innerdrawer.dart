import 'package:bezier_chart/bezier_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:fnetrading/subcribers.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:fnetrading/utils/DrawerWidget.dart';
import 'package:fnetrading/utils/homeappbar.dart';
import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class drawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return customDrawer();
  }
}

class customDrawer extends State<drawer> {
  String type = "Select", interest = "Select";
  Map<String, double> dataMap = new Map();
  ScrollController _scrollController = ScrollController();
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  int touchedIndex;
  bool showAvg = false;
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
  void _scrollToBottom() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 2000000), curve: Curves.ease);
  }
final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
final double width = 7;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex;
  bool isPlaying = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // dataMap.putIfAbsent("Others", () => 10);
    // dataMap.putIfAbsent("Oil and Gas", () => 8);
    // dataMap.putIfAbsent("Food and personal Care", () => 5);
    // dataMap.putIfAbsent("Cement", () => 3);
    // dataMap.putIfAbsent("Tobacco", () => 7);
    // dataMap.putIfAbsent("Commercial Bank", () => 2);
 final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (SubscriberSeries series, _) => series.year,
          measureFn: (SubscriberSeries series, _) => series.subscribers,
          colorFn: (SubscriberSeries series, _) => series.barColor)
    ];
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
    return InnerDrawer(
        key: _innerDrawerKey,
        onTapClose: true, // default false
        //swipe: true, // default true
        colorTransitionChild: grey, // default Color.black54
        colorTransitionScaffold: Colors.transparent, // default Color.black54

        //When setting the vertical offset, be sure to use only top or bottom
        offset: IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),
        backgroundDecoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("images/images.jpg"), fit: BoxFit.cover),
        ),
        scale: IDOffset.horizontal(2), // set the offset in both directions

        // proportionalChildArea : true, // default true
        borderRadius: 20, // default 0
        leftAnimationType: InnerDrawerAnimation.quadratic, // default static
        rightAnimationType: InnerDrawerAnimation.quadratic,
        // backgroundDecoration: BoxDecoration(color: Colors.red ), // default  Theme.of(context).backgroundColor

        //when a pointer that is in contact with the screen and moves to the right or left
        onDragUpdate: (double val, InnerDrawerDirection direction) {
          // return values between 1 and 0
          print(val);
          // check if the swipe is to the right or to the left
          print(direction == InnerDrawerDirection.start);
        },
        innerDrawerCallback: (a) =>
            print(a), // return  true (open) or false (close)
        leftChild: drawerr(),
        // required if rightChild is not set
        // rightChild: Container(), // required if leftChild is not set

        //  A Scaffold is generally used but you are free to use other widgets
        // Note: use "automaticallyImplyLeading: false" if you do not personalize "leading" of Bar
        scaffold: Scaffold(
          appBar: homeappbar("First National Equities Limited", 100),
          body: SingleChildScrollView(
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
                        height: MediaQuery.of(context).size.height * .37,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage("images/images.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.darken),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    search();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    width:
                                        MediaQuery.of(context).size.width * .35,
                                    height: MediaQuery.of(context).size.height *
                                        .07,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * .7,
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  child: PieChart(
                                    PieChartData(
                                        centerSpaceColor: darkblue,
                                        pieTouchData: PieTouchData(
                                            touchCallback: (pieTouchResponse) {
                                          setState(() {
                                            if (pieTouchResponse.touchInput
                                                    is FlLongPressEnd ||
                                                pieTouchResponse.touchInput
                                                    is FlPanEnd) {
                                              // touchedIndex = -1;
                                            } else {
                                              touchedIndex = pieTouchResponse
                                                  .touchedSectionIndex;
                                            }
                                          });
                                        }),
                                        borderData: FlBorderData(
                                          show: false,
                                        ),
                                        sectionsSpace: 0,
                                        centerSpaceRadius: 40,
                                        sections: showingSections()),
                                  ),
                                  // PieChart(
                                  //   dataMap: dataMap,
                                  //   legendStyle: TextStyle(
                                  //     color: white
                                  //   ),
                                  //   animationDuration: Duration(milliseconds: 800),
                                  //   chartLegendSpacing: 13.0,
                                  //   chartRadius: MediaQuery.of(context).size.width * .7,
                                  //   showChartValuesInPercentage: true,
                                  //  // showChartValues: true,
                                  //   showChartValuesOutside: false,
                                  //   chartValueBackgroundColor: Colors.grey[200],
                                  //   colorList: [blue, green, Colors.yellow, Colors.pink],
                                  //   showLegends: true,

                                  //   legendPosition: LegendPosition.right,
                                  //   decimalPlaces: 1,
                                  //   //showChartValueLabel: true,
                                  //   initialAngle: 0,
                                  //   chartValueStyle: defaultChartValueStyle.copyWith(
                                  //     color: white,
                                  //   ),
                                  //   chartType: ChartType.ring,
                                  // )
                                ),
                                Column(
                                  children: <Widget>[
                                    new CircularPercentIndicator(
                                      radius: 35.0,
                                      lineWidth: 2.0,
                                      percent: 1.0,
                                      center: new Text(
                                        "30%",
                                        style: TextStyle(
                                            color: white, fontSize: 14),
                                      ),
                                      progressColor: Colors.orange,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    new CircularPercentIndicator(
                                      radius: 35.0,
                                      lineWidth: 2.0,
                                      percent: 1.0,
                                      center: new Text(
                                        "15%",
                                        style: TextStyle(
                                            color: white, fontSize: 14),
                                      ),
                                      progressColor: Colors.purple,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    new CircularPercentIndicator(
                                      radius: 35.0,
                                      lineWidth: 2.0,
                                      percent: 1.0,
                                      center: new Text(
                                        "15%",
                                        style: TextStyle(
                                            color: white, fontSize: 14),
                                      ),
                                      progressColor: Colors.green,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    new CircularPercentIndicator(
                                      radius: 35.0,
                                      lineWidth: 2.0,
                                      percent: 1.0,
                                      center: new Text(
                                        "40%",
                                        style: TextStyle(
                                            color: white, fontSize: 14),
                                      ),
                                      progressColor: Colors.blue,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
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
                        width: MediaQuery.of(context).size.width * .93,
                        height: MediaQuery.of(context).size.height * .25,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(left:10,right:10,top:10),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * .3,
                            color: white,
                            child: BarChart(
                    BarChartData(
                      maxY: 20,
                      barTouchData: BarTouchData(
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: Colors.grey,
                            
                            getTooltipItem: (_a, _b, _c, _d) => null,
                          ),
                          touchCallback: (response) {
                            if (response.spot == null) {
                              setState(() {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                              });
                              return;
                            }

                            touchedGroupIndex = response.spot.touchedBarGroupIndex;

                            setState(() {
                              if (response.touchInput is FlLongPressEnd ||
                                  response.touchInput is FlPanEnd) {
                                touchedGroupIndex = -1;
                                showingBarGroups = List.of(rawBarGroups);
                              } else {
                                showingBarGroups = List.of(rawBarGroups);
                                if (touchedGroupIndex != -1) {
                                  double sum = 0;
                                  for (BarChartRodData rod
                                      in showingBarGroups[touchedGroupIndex].barRods) {
                                    sum += rod.y;
                                  }
                                  final avg =
                                      sum / showingBarGroups[touchedGroupIndex].barRods.length;

                                  showingBarGroups[touchedGroupIndex] =
                                      showingBarGroups[touchedGroupIndex].copyWith(
                                    barRods: showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                                      return rod.copyWith(y: avg);
                                    }).toList(),
                                  );
                                }
                              }
                            });
                          }),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                              color: const Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          margin: 20,
                          getTitles: (double value) {
                            switch (value.toInt()) {
                              case 0:
                                return 'Mn';
                              case 1:
                                return 'Te';
                              case 2:
                                return 'Wd';
                              case 3:
                                return 'Tu';
                              case 4:
                                return 'Fr';
                              case 5:
                                return 'St';
                              case 6:
                                return 'Sn';
                              default:
                                return '';
                            }
                          },
                        ),
                        leftTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                              color: const Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          margin: 32,
                          reservedSize: 14,
                          getTitles: (value) {
                            if (value == 0) {
                              return '1K';
                            } else if (value == 10) {
                              return '5K';
                            } else if (value == 19) {
                              return '10K';
                            } else {
                              return '';
                            }
                          },
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: showingBarGroups,
                    ),
                  ),
                            // child: charts.BarChart(
                            //   series,
                            //   vertical: true,
                            //   animate: true,
                            //   barGroupingType: charts.BarGroupingType.grouped,
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width * .25,
                          height: MediaQuery.of(context).size.height * .05,
                          color: white,
                          child: Center(
                            child: Text(
                              "Data Feed",
                              style: TextStyle(
                                  color: green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        height: MediaQuery.of(context).size.height * .06,
                        child: ListView.builder(
                            itemBuilder: (BuildContext ctx, int indx) {
                              return datafied(indx);
                            },
                            controller: _scrollController,
                            reverse: false,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 10000),
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
                        "Who We Are?",
                        style: TextStyle(
                            color: grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
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
                        child: LineChart(
                          mainData(),
                        ),
                      ),
                      // child: BezierChart(
                      //   bezierChartScale: BezierChartScale.CUSTOM,
                      //   xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
                      //   series: const [
                      //     BezierLine(
                      //       data: const [
                      //         DataPoint<double>(value: 10, xAxis: 0),
                      //         DataPoint<double>(value: 130, xAxis: 5),
                      //         DataPoint<double>(value: 50, xAxis: 10),
                      //         DataPoint<double>(value: 150, xAxis: 15),
                      //         DataPoint<double>(value: 75, xAxis: 20),
                      //         DataPoint<double>(value: 0, xAxis: 25),
                      //         DataPoint<double>(value: 5, xAxis: 30),
                      //         DataPoint<double>(value: 45, xAxis: 35),
                      //       ],
                      //     ),
                      //   ],
                      //   config: BezierChartConfig(
                      //     verticalIndicatorStrokeWidth: 5.0,
                      //     verticalIndicatorColor: grey,
                      //     xLinesColor: grey,
                      //     showVerticalIndicator: true,
                      //     backgroundColor: green,
                      //     snap: false,
                      //   ),
                      // ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        )
        /* OR
            CupertinoPageScaffold(                
                navigationBar: CupertinoNavigationBar(
                    automaticallyImplyLeading: false
                ),
            ), 
            */
        );
  }

  //  Current State of InnerDrawerState
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  // void _toggle()
  // {
  //    _innerDrawerKey.currentState.toggle(
  //    // direction is optional
  //    // if not set, the last direction will be used
  //    //InnerDrawerDirection.start OR InnerDrawerDirection.end
  //     direction: InnerDrawerDirection.end
  //    );
  // }
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
            contentPadding: EdgeInsets.only(top: 0.3),
            content: SingleChildScrollView(
              child: Container(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10, left: 5),
                            width: MediaQuery.of(context).size.width * .25,
                            height: MediaQuery.of(context).size.height * .06,
                            decoration: BoxDecoration(
                              color: green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }

  LineChartData mainData() {
    return LineChartData(
      backgroundColor: darkblue,
      clipData: FlClipData(bottom: true, top: true, left: false, right: true),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: white,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: white,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: const TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
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

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }


BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        y: y1,
        color: green,
        width: width,
      ),
      BarChartRodData(
        y: y2,
        color: darkblue,
        width: width,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const double width = 4.5;
    const double space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
