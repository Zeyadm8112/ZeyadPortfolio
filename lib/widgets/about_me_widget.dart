import 'package:flutter/material.dart';

Widget AboutMeWidget(double mWidth,double mHeigt){
  return           Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(mHeigt * 0.04),
                  child: SizedBox(
                    height: mHeigt * 0.8,
                    width: mWidth * 0.5,
                    child: Column(
                      children: [
                        SizedBox(
                          child: Text(
                            "Programming With Passion While Exploring The World.",
                            style: TextStyle(
                                color: Color(0xff000A2D),
                                fontSize: mHeigt * 0.05,
                                letterSpacing: 1.2,
                                height: 1.5),
                          ),
                        ),
                        SizedBox(height: mHeigt * 0.05),
                        Text(
                          " I feels programming is very similar to magic. I write some code, and who does not understand code ,it is no less than some magic spell for them .And something amazing happens when I run it.",
                          style: TextStyle(
                              fontSize: mHeigt * 0.03,
                              color: Color(0xff102881),
                              letterSpacing: 1,
                              height: 1.8),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(mHeigt * 0.04),
                  child: SizedBox(
                    height: mHeigt * 0.8,
                    width: mWidth * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Any type of Query & Discussion",
                          style: TextStyle(
                              fontSize: mHeigt * 0.05,
                              color: Color(0xff000A2D),
                              letterSpacing: 1.2,
                              height: 1.5),
                        ),
                        SizedBox(height: mHeigt * 0.1),
                        Text(
                          "Late talk with me",
                          style: TextStyle(
                              fontSize: mHeigt * 0.045,
                              color: Color(0xff464D65)),
                        ),
                        SizedBox(height: mHeigt * 0.1),
                        Text(
                          "Zeyadm792@gmail.com",
                          style: TextStyle(
                              color: Color(0xff000A2D),
                              fontSize: mHeigt * 0.03),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]
  );

}