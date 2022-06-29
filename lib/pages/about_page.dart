import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protflioe_basic/pages/home_page.dart';
import 'package:protflioe_basic/pages/tab_skill_one.dart';
import 'package:protflioe_basic/pages/tab_skill_three.dart';
import 'package:protflioe_basic/pages/tab_skill_two.dart';
import 'package:protflioe_basic/widgets/Programming_languages_widget.dart';
import 'package:protflioe_basic/widgets/footer.dart';
import 'package:protflioe_basic/widgets/nav_bar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
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
    bool flag = false;
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
                                      SizedBox(width: mWidth * 0.02,),

                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Me ",
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
                                      color: Colors.red, fontSize: mHeight * 0.03),
                                ),
                              ),
                              Text(
                                "/",
                                style: TextStyle(
                                    fontSize: mHeight * 0.03, color: Colors.red),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AboutPage()));
                                },
                                child: Text(
                                  "About",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: mHeight * 0.03),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: mHeight * 0.08,
                  width: mWidth * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   width: mWidth * 0.02,
                    // ),
                    SizedBox(
                      width: mWidth * 0.6,
                      height: mHeight * 0.8,
                      child: Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              color: Colors.grey[300],
                              width: mWidth * 0.3,
                              height: mHeight * 0.9,
                            ),
                            Container(
                              width: mWidth * 1.6,
                              height: mHeight * 1.8,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/zeyad1.png"),
                                      fit: BoxFit.contain)),
                            )
                          ]),
                    ),
                    SizedBox(
                      width: mWidth * 0.39,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(" I Create Products Not Just Art. ",
                                style: TextStyle(
                                  fontSize: mHeight * 0.08,
                                  color: Color(0xff000A2D),
                                )),
                            SizedBox(
                              height: mHeight * 0.07,
                            ),
                            Text(
                              "Unlimited rewards. enjoy attractive discounts flexible Payme options global usage. Unlimited rewards. enjoy attracti exible ayment options global usage.",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: mHeight * 0.02,
                                height: 1.5,
                                letterSpacing: 1.2,
                                wordSpacing: 1.4,
                              ),
                            ),
                            SizedBox(
                              height: mHeight * 0.07,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: mWidth * 0.002,
                                    height: mHeight * 0.07,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(
                                    width: mWidth * 0.02,
                                  ),
                                  SizedBox(
                                    width: mHeight * 0.6,
                                    child: Text(
                                      "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: mHeight * 0.03,
                                        height: 1.1,
                                        letterSpacing: 1.2,
                                        wordSpacing: 1.1,
                                      ),
                                    ),
                                  )
                                ]),
                            SizedBox(
                              height: mHeight * 0.07,
                            ),
                            Text(
                              "Unlimited rewards. enjoy attractive discounts flexible Payme options global usage. Unlimited rewards. enjoy attracti exible ayment options global usage.,",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: mHeight * 0.02,
                                height: 1.5,
                                letterSpacing: 1.2,
                                wordSpacing: 1.4,
                              ),
                            ),
                                        SizedBox(
                                          height: mHeight * 0.1,
                                        )
                                          , Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(mHeight * 0.007),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          splashColor: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook,
                            color: Color(0xff848493),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.instagram,
                              color: Color(0xff848493))),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.twitter,
                              color: Color(0xff848493))),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.linkedin,
                              color: Color(0xff848493))),
                    ],
                  ),
                )
              ],
                                          ),
                                                              
                      
                          ]),
                    )
                  ],
                )
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: mHeight * 0.2,
              ),
              SizedBox(
                  width: mWidth * 0.4,
                  child: Padding(
                    padding: EdgeInsets.all(mHeight * 0.03),
                    child: Text(
                      "My Programming languages :",
                      style: TextStyle(
                          fontSize: mHeight * 0.05, color: Color(0xff000A2D)),
                    ),
                  )),
              SizedBox(
                  width: mWidth,
                  height: mHeight * 0.6,
                  child: MineGridView(context, mWidth, mHeight)),
              SizedBox(
                width: mWidth * 0.4,
                child: Padding(
                  padding: EdgeInsets.all(mHeight * 0.03),
                  child: Text(
                    "My Skills : ",
                    style: TextStyle(
                        fontSize: mHeight * 0.05, color: Color(0xff000A2D)),
                  ),
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
                  SizedBox(height:mHeight *0.1 ),
                  SizedBox(
                    width: mWidth,
                    height: mHeight * 0.7,
                    child: TabBarView(controller: _tabController, children:const [
                      TabSkillOne(),
                      TabSkillTwo(),
                    
                      TabSkillThree()
                    ]),
                  )
                ],
              ),
Footer(mWidth, mHeight)
            ])

          ],
        ),
      ),
    );
  }
}
