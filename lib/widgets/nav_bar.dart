import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:protflioe_basic/pages/about_page.dart';
import 'package:protflioe_basic/pages/home_page.dart';
import 'package:protflioe_basic/pages/service_page.dart';
import 'package:protflioe_basic/portfolio_page.dart';

Widget NavBar(double width, double height, BuildContext ctx) {
  return SliverAppBar(
    snap: true,
    pinned: true,
    stretch: true,
    expandedHeight: 100,
    backgroundColor: Colors.white,
    elevation: 100,
    scrolledUnderElevation: 10,
    shadowColor: Colors.black,
    title: Text("IcecCode",style: TextStyle(color: Color(0xff002D5B)),),
    // ignore: deprecated_member_use
    backwardsCompatibility: true,
    actions: [
      SizedBox(
        height: height * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    ctx, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                "Home",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: width * 0.07,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    ctx, MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: Text(
                "About",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: width * 0.07,
            ),
            InkWell(
              onTap:(){ 
                              Navigator.push(
                    ctx, MaterialPageRoute(builder: (context) => ServicePage()));
              }
              ,
              child: Text(
                "Services",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: width * 0.07,
            ),
            InkWell(
                            onTap:(){ 
                              Navigator.push(
                    ctx, MaterialPageRoute(builder: (context) =>PortfolioPage()));
              },

              child: Text(
                "Portfolio",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: width * 0.07,
            ),
          ],
        ),
      ),
    ],
    floating: true,
    //  forceElevated: innerBoxIsScrolled,
  );
}
