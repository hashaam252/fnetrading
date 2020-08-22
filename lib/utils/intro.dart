import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:fnetrading/innerdrawer.dart';
import 'package:fnetrading/utils/Colors.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';


class intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _intro();
  }
}

class _intro extends State<intro> {
  List<Slide> slides = new List();
  Function goToTab;
  String img = "images/intro1.png";
  String img1 = "images/intro2.png";
  String img2 = "images/intro3.png";
  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        backgroundColor: Colors.transparent,
        title: "",
       backgroundImage:"images/intro1.png",
       backgroundImageFit: BoxFit.cover,
        styleTitle: TextStyle(
            color: white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: white,
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Raleway'),
        pathImage: img,
        
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.transparent,
        title: "",
       backgroundImage: "images/intro2.png",
       backgroundImageFit: BoxFit.cover,
        styleTitle: TextStyle(
            color: white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: white,
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Raleway'),
        pathImage: img1,
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.transparent,
        title: "",
        backgroundImage: "images/intro3.png",
       backgroundImageFit: BoxFit.cover,
        styleTitle: TextStyle(
            color: white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: white,
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Raleway'),
        pathImage: img2,
      ),
    );
  }

 void skippress() {
    // Back to the first tab
   // this.goToTab(0);
    var route = MaterialPageRoute(
        builder: (BuildContext context) => new drawer());
    Navigator.of(context).pushReplacement(route);
  }
  void onDonePress() {
    // Back to the first tab
   // this.goToTab(0);
    var route =
        MaterialPageRoute(builder: (BuildContext context) => new drawer());
    Navigator.of(context).pushReplacement(route);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Text("Skip",style: TextStyle(
      color: white,
      fontSize: 16
    ),);
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * .12,
              ),
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
              )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0, left: 10, right: 10),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0, left: 10, right: 10),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/crop.jpg"))),
          child: IntroSlider(
            backgroundColorAllSlides: Colors.transparent,
            // List slides
            slides: this.slides,

            //Skip button
            renderSkipBtn: this.renderSkipBtn(),
            colorSkipBtn: green,
            onSkipPress: skippress,
            highlightColorSkipBtn: green,

            // Next button
            renderNextBtn: this.renderNextBtn(),

            // Done button
            renderDoneBtn: this.renderDoneBtn(),
            onDonePress: this.onDonePress,
            colorDoneBtn: white,
            highlightColorDoneBtn: blue,

            // Dot indicator
            colorDot: Colors.white,
            sizeDot: 13.0,
            //typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

            // Tabs
            listCustomTabs: this.renderListCustomTabs(),
            //  backgroundColorAllSlides: Colors.white,
            refFuncGoToTab: (refFunc) {
              this.goToTab = refFunc;
            },

            // Show or hide status bar
            shouldHideStatusBar: true,

            // On tab change completed
            onTabChangeCompleted: this.onTabChangeCompleted,
          )),
    );
  }
}
