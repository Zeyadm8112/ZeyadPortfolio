import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:protflioe_basic/pages/home_page.dart';
import 'package:protflioe_basic/widgets/footer.dart';
import 'package:protflioe_basic/widgets/nav_bar.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
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

  Widget build(BuildContext context) {
    double mHeigt = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    return NestedScrollView(
      headerSliverBuilder: ((context, innerBoxIsScrolled) {
        return <Widget>[NavBar(mWidth, mHeigt, context)];
      }),
      body: Scaffold(
        body: ListView(children: [
          Container(
              width: mWidth,
              height: mHeigt * 0.53,
              color: Color(0xffE1E5E8),
              child: 
              Row(
                children: [
                  SizedBox(width: mWidth * 0.02,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Service",
                                style: TextStyle(
                                  fontSize: mHeigt * 0.095,
                                  color: Color(0xff000A2D),
                                )),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: mHeigt * 0.03),
                                  ),
                                ),
                                Text(
                                  "/",
                                  style: TextStyle(
                                      fontSize: mHeigt * 0.03, color: Colors.red),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ServicePage()));
                                  },
                                  child: Text(
                                    "Service",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: mHeigt * 0.03),
                                  ),
                                ),
                              ],
                            ),

                  ]),
                ],
              ),
              ),               SizedBox(height: mHeigt * 0.05,)
,Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        SizedBox(
                          width: mWidth * 0.4,
                          child: Text(
                            "What services you will get from me ?",
                            style: TextStyle(
                                fontSize: mHeigt * 0.07, color: Color(0xff000A2D)),
                          ),
                        ),
                      ],
                    ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: mWidth * 0.07,
                                      height: mHeigt * 0.15,
                                      decoration: BoxDecoration(
                                          color: circleBackMobile,
                                          borderRadius:
                                              BorderRadius.circular(40)),
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
                                            color: hTwoColorMobile,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: mWidth * 0.07,
                                      height: mHeigt * 0.15,
                                      decoration: BoxDecoration(
                                          color: circleBackDesktop,
                                          borderRadius:
                                              BorderRadius.circular(40)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      width: mWidth * 0.07,
                                      height: mHeigt * 0.15,
                                      decoration: BoxDecoration(
                                          color: circleBackWeb,
                                          borderRadius:
                                              BorderRadius.circular(40)),
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

                ],
              )
              ,Footer(mWidth, mHeigt)
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
