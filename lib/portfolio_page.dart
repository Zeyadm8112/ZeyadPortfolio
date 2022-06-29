import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:protflioe_basic/pages/home_page.dart';
import 'package:protflioe_basic/pages/tab1_page.dart';
import 'package:protflioe_basic/pages/tab2_page.dart';
import 'package:protflioe_basic/pages/tab3_page.dart';
import 'package:protflioe_basic/widgets/footer.dart';
import 'package:protflioe_basic/widgets/nav_bar.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _ServicePageState();
}

class _ServicePageState extends State<PortfolioPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    return NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return <Widget>[NavBar(mWidth, mHeight, context)];
        }),
        body: Scaffold(
            body: ListView(
          children: [
            Container(
              width: mWidth,
              height: mHeight * 0.53,
              color: Color(0xffE1E5E8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: mWidth * 0.02,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("PortFolio",
                              style: TextStyle(
                                fontSize: mHeight * 0.095,
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
                                      color: Colors.red,
                                      fontSize: mHeight * 0.03),
                                ),
                              ),
                              Text(
                                "/",
                                style: TextStyle(
                                    fontSize: mHeight * 0.03,
                                    color: Colors.red),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PortfolioPage()));
                                },
                                child: Text(
                                  "About",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: mHeight * 0.03),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            SizedBox(height: mHeight * 0.05),
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
                  height: mHeight * 1.2,
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
            SizedBox(height: mHeight * 0.05),
            Footer(mWidth, mHeight),
          ],
        )));
  }
}
