import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:protflioe_basic/widgets/grid_widget.dart';

class TabTwoPage extends StatefulWidget {
  const TabTwoPage({Key? key}) : super(key: key);

  @override
  State<TabTwoPage> createState() => _TabTwoPageState();
}

class _TabTwoPageState extends State<TabTwoPage> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
body: Container(
          child: GridView.custom(
            
              gridDelegate: SliverQuiltedGridDelegate(
                
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
               // repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: aImagesList.length,
                  (context, index) => Container(
                    
                      
                    
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Image.asset(aImagesList[index])),
                        ),
                      )
                  // itemCount: ImagesList.length,
                  // gridDelegate:
                  //     SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 3,
                  //       ),
                  // itemBuilder: (BuildContext context, int index) {
                  //   return Container(child:  Padding(
                  //     padding: const EdgeInsets.all(3.0),
                  //     child: SizedBox(
                  //     width: 200, height: 200, child: Image.asset(ImagesList[index])),
                  ))),
    );

    
  }
}