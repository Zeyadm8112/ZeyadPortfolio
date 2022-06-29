// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon/icon.dart';
import 'package:protflioe_basic/pages/tab1_page.dart';
import 'package:protflioe_basic/pages/tab2_page.dart';
import 'package:protflioe_basic/pages/tab3_page.dart';
import 'package:protflioe_basic/widgets/about_me_widget.dart';
import 'package:protflioe_basic/widgets/footer.dart';
import 'package:protflioe_basic/widgets/grid_widget.dart';
import 'package:protflioe_basic/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color mWhiteDesktop = Colors.white;
  Color circleBackDesktop = Color(0xffFFF4F4);
  Color hOneColorDesktop = Color(0xff000A2D);
  Color hTwoColorDesktop = Colors.blueAccent;
  Color mWhiteMobile = Colors.white;
  Color circleBackMobile = Color(0xffFFF4F4);
  Color hOneColorMobile = Color(0xff000A2D);
  Color hTwoColorMobile = Colors.blueAccent;
  Color mWhiteWeb = Colors.white;
  Color circleBackWeb = Color(0xffFFF4F4);
  Color hOneColorWeb = Color(0xff000A2D);
  Color hTwoColorWeb = Colors.blueAccent;

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mHeigt = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return <Widget>[NavBar(mWidth, mHeigt, context)];
        }),
        body: ListView(children: [
          Stack(
            children: [
              Container(
                width: mWidth,
                height: 800,
                color: Color(0xffE1E5E8),
              ),
              Padding(
                padding: EdgeInsets.all(mHeigt * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: mHeigt * 0.2,
                    ),
                    Text(
                      "Get every single solution",
                      style: TextStyle(
                        color: Color(0xffE8948B),
                      ),
                    ),
                    SizedBox(
                      height: mHeigt * 0.05,
                    ),
                    Text(
                      "Iam mobile applications developer",
                      style: TextStyle(
                          color: Color(0xff002D5B),
                          fontSize: mHeigt * 0.07,
                          letterSpacing: 1.2,
                          wordSpacing: 1.2,
                          height: 1.4),
                    ),
                    Text(
                      "Zeyad Mohamed",
                      style: TextStyle(
                          color: Color(0xff002D5B),
                          fontSize: mHeigt * 0.07,
                          letterSpacing: 1.2,
                          wordSpacing: 1.2,
                          height: 1.4),
                    ),
                    SizedBox(
                      height: mHeigt * 0.03,
                    ),
                    SizedBox(
                      width: mWidth * 0.25,
                      //  height: mHeigt * 0.5,
                      child: Text(
                        "I am 21 years old I am mobile applications developer, I am from Suez-Egypt, I am studying mathematics science at the faculty of sciences at Suez Canal University",
                        style: TextStyle(
                            color: Color(0xff5A6271),
                            letterSpacing: 1.2,
                            wordSpacing: 1.2,
                            height: 1.4),
                      ),
                    ),
                    SizedBox(
                      height: mHeigt * 0.03,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: mWidth * 0.3,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Hire Me"),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffE1E5E8)),
                                overlayColor:
                                    MaterialStateProperty.all(Colors.red),
                                foregroundColor: MaterialStateProperty.all(
                                    Color(0xffE8948B)))),
                      ],
                    )
                    // GestureDetector(
                    //   child: Container(
                    //     decoration: BoxDecoration(border: Border.all()),
                    //     child: Text("Hire me"),
                    //   ),
                    // )
                  ],
                ),
              ),
              Positioned(
                  right: 30,
                  child: SizedBox(child: Image.asset("images/zeyad2.png")))
            ],
          ),
//About Section----------------------------------------------------------------------------------------------------------------------------------------

          AboutMeWidget(mWidth, mHeigt),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(mHeigt * 0.05),
                child: SizedBox(
                    width: mWidth * 0.4,
                    child: Text(
                      "What services you will get from me ?",
                      style: TextStyle(
                          fontSize: mHeigt * 0.07, color: Color(0xff000A2D)),
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(mHeigt * 0.02),
                    child: MouseRegion(
                      onEnter: _incrementEnterMobile,
                      onExit: _incrementExitMobile,
                      child: Container(
                        decoration: BoxDecoration(
                          color: mWhiteMobile,
                            border: Border.all(color: Color(0xffE1EBF7))),
                        width: mWidth * 0.3,
                        height: mHeigt * 0.6,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: mWidth * 0.07,
                                  height: mHeigt * 0.15,
                                  decoration: BoxDecoration(
                                      color: circleBackMobile,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Icon(
                                    Icons.phone_android,
                                    color: Colors.red,
                                    size: mHeigt * 0.09,
                                  )),
                              Text("Mobile Applications",
                                  style: TextStyle(
                                      color: hOneColorMobile,
                                      fontSize: mHeigt * 0.04,
                                      letterSpacing: 1.2,
                                      wordSpacing: 1.2,
                                      height: 1.4)),
                              SizedBox(
                                width: mWidth * 0.18,
                                child: Text(
                                    "I am specialized in Mobile Applications Flutter Cross platform & Native Andriod.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:hTwoColorMobile,
                                        fontSize: mHeigt * 0.03,
                                        letterSpacing: 1.2,
                                        wordSpacing: 1.2,
                                        height: 1.4)),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(mHeigt * 0.02),
                    child: MouseRegion(
                      onEnter: _incrementEnterDesktop,
                      onExit: _incrementExitDesktop,
                      child: Container(
                        decoration: BoxDecoration(
                            color: mWhiteDesktop,
                            border: Border.all(color: Color(0xffE1EBF7))),
                        width: mWidth * 0.3,
                        height: mHeigt * 0.6,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: mWidth * 0.07,
                                  height: mHeigt * 0.15,
                                  decoration: BoxDecoration(
                                      color: circleBackDesktop,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Icon(
                                    Icons.desktop_windows,
                                    color: Colors.red,
                                    size: mHeigt * 0.09,
                                  )),
                              Text("Desktop Applications",
                                  style: TextStyle(
                                      color: hOneColorDesktop,
                                      fontSize: mHeigt * 0.04,
                                      letterSpacing: 1.2,
                                      wordSpacing: 1.2,
                                      height: 1.4)),
                              SizedBox(
                                width: mWidth * 0.18,
                                child: Text(
                                    "I am specialized in desktop applications for all platfroms.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: hTwoColorDesktop,
                                        fontSize: mHeigt * 0.03,
                                        letterSpacing: 1.2,
                                        wordSpacing: 1.2,
                                        height: 1.4)),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(mHeigt * 0.02),
                    child: MouseRegion(
                      onEnter: _incrementEnterWeb,
                      onExit: _incrementExitWeb,
                      child: Container(
                        decoration: BoxDecoration(
                            color: mWhiteWeb,
                            border: Border.all(color: Color(0xffE1EBF7))),
                        width: mWidth * 0.3,
                        height: mHeigt * 0.6,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: mWidth * 0.07,
                                  height: mHeigt * 0.15,
                                  decoration: BoxDecoration(
                                      color: circleBackWeb,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Icon(
                                    Icons.web_rounded,
                                    color: Colors.red,
                                    size: mHeigt * 0.09,
                                  )),
                              Text("Web Development",
                                  style: TextStyle(
                                      color: hOneColorWeb,
                                      fontSize: mHeigt * 0.04,
                                      letterSpacing: 1.2,
                                      wordSpacing: 1.2,
                                      height: 1.4)),
                              SizedBox(
                                width: mWidth * 0.18,
                                child: Text(
                                    "I creates the online digital identity for your business allowing it to flourish in the websites world",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: hTwoColorWeb,
                                        fontSize: mHeigt * 0.03,
                                        letterSpacing: 1.2,
                                        wordSpacing: 1.2,
                                        height: 1.4)),
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
              //portFolio Section----------------------------------------------------------------------------------------------------------------------------------------
              Padding(
                padding: EdgeInsets.only(
                    right: mHeigt * 0.02,
                    left: mHeigt * 0.02,
                    top: mHeigt * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(mHeigt * 0.05),
                      child: SizedBox(
                          width: mWidth * 0.4,
                          child: Text(
                            "What services you will get from me ?",
                            style: TextStyle(
                                fontSize: mHeigt * 0.07,
                                color: Color(0xff000A2D)),
                          )),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: mWidth * 0.5,
                        //  height: mHeigt *0.2,
                        child: TabBar(
                          indicatorColor: Colors.red,

                          //               overlayColor: MaterialStateProperty.all(Colors.red),
                          controller: _tabController,
                          tabs: [
                            Text(
                              "Flutter ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text("Android ",
                                style: TextStyle(color: Colors.black)),
                            Text("UX ", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: mWidth,
                    height: mHeigt * 1.2,
                    child: TabBarView(controller: _tabController, children: [
                      TabOnePage(),
                      TabTwoPage(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TabThreePage(),
                      )
                    ]),
                  )
                ],
              ),
              Footer(mWidth, mHeigt)
            ],
          )
        ]),
      ),
    );
  }

  void updateLocationDesktop(PointerEvent details) {
    setState(() {
      // ColorHover = Colors.red;
      // textColorHover = Colors.white;
      // x = details.position.dx;
      // y = details.position.dy;
      circleBackDesktop = Colors.white;
      hOneColorDesktop = Colors.white;
      mWhiteDesktop = Colors.red;
      hTwoColorDesktop = Colors.white;
    });
  }

  void _incrementExitDesktop(PointerEvent details) {
    setState(() {
      // _exitCounter++;

      mWhiteDesktop = Colors.white;
      circleBackDesktop = Color(0xffFFF4F4);

      hOneColorDesktop = Color(0xff000A2D);
      hTwoColorDesktop = Colors.blueAccent;
    });
  }

  void _incrementEnterDesktop(PointerEvent details) {
    setState(() {
      circleBackDesktop = Colors.white;
      hOneColorDesktop = Colors.white;
      mWhiteDesktop = Colors.red;
      hTwoColorDesktop = Colors.white;

      // _exitCounter--;
    });
  }

  void updateLocationMobile(PointerEvent details) {
    setState(() {
      // ColorHover = Colors.red;
      // textColorHover = Colors.white;
      // x = details.position.dx;
      // y = details.position.dy;
      circleBackMobile = Colors.white;
      hOneColorMobile = Colors.white;
      mWhiteMobile = Colors.red;
      hTwoColorMobile = Colors.white;
    });
  }

  void _incrementExitMobile(PointerEvent details) {
    setState(() {
      // _exitCounter++;

      mWhiteMobile = Colors.white;
      circleBackMobile = Color(0xffFFF4F4);

      hOneColorMobile = Color(0xff000A2D);
      hTwoColorMobile = Colors.blueAccent;
    });
  }

  void _incrementEnterMobile(PointerEvent details) {
    setState(() {
      circleBackMobile = Colors.white;
      hOneColorMobile = Colors.white;
      mWhiteMobile = Colors.red;
      hTwoColorMobile = Colors.white;

      // _exitCounter--;
    });
  }

  void updateLocationWeb(PointerEvent details) {
    setState(() {
      // ColorHover = Colors.red;
      // textColorHover = Colors.white;
      // x = details.position.dx;
      // y = details.position.dy;
      circleBackWeb = Colors.white;
      hOneColorWeb = Colors.white;
      mWhiteWeb = Colors.red;
      hTwoColorWeb = Colors.white;
    });
  }

  void _incrementExitWeb(PointerEvent details) {
    setState(() {
      // _exitCounter++;

      mWhiteWeb = Colors.white;
      circleBackWeb = Color(0xffFFF4F4);

      hOneColorWeb = Color(0xff000A2D);
      hTwoColorWeb = Colors.blueAccent;
    });
  }

  void _incrementEnterWeb(PointerEvent details) {
    setState(() {
      circleBackWeb = Colors.white;
      hOneColorWeb = Colors.white;
      mWhiteWeb = Colors.red;
      hTwoColorWeb = Colors.white;

      // _exitCounter--;
    });
  }
}
