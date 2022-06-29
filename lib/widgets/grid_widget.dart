import 'package:flutter/material.dart';

final ImagesList = <String>[
  "images/Zaker.png",
  "images/ZakerDark.png",
  "images/ZakerFeatures.png",
  "images/ZakerIntro.png"
];
final uImagesList = <String>[
  "images/ux1.jpg",
  "images/ux2.jpg",
  "images/ux3.jpeg",
  "images/ux4.jpg"
];
final aImagesList = <String>[
  "images/android1.jpg",
  "images/android2.jpg",
  "images/android3.jpg",
  "images/android4.jpg"
];


Widget GridZ(int index){
  return Container(
                    
                      
                    
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Image.asset(ImagesList[index])),
                        ));
                      

}