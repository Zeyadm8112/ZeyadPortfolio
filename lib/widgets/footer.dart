import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget Footer(double width, height) {
  return Container(
      width: width,
      height: height * 0.7,
      color: Color(0xff080827),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: width * 0.7,
                height: height * 0.3,
                child: Image.asset("images/icecode.png")),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Icecode2022@gmail.com",
                      style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:
                      Text("Suez-Egypt", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Copyright ©2022 All rights reserved",
                  style: TextStyle(color: Color(0xff848493)),
                ),
                Padding(
                  padding: EdgeInsets.all(height * 0.007),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Stay connected",
                          style: TextStyle(color: Color(0xff848493))),
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
                          icon: FaIcon(FontAwesomeIcons.chrome,
                              color: Color(0xff848493))),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ));
}
