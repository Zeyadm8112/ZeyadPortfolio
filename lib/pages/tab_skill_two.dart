import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:protflioe_basic/widgets/skills_widgets.dart';

class TabSkillTwo extends StatefulWidget {
  const TabSkillTwo({Key? key}) : super(key: key);

  @override
  State<TabSkillTwo> createState() => _TabSkillThreeState();
}

class _TabSkillThreeState extends State<TabSkillTwo> {
  Color ColorHover = Colors.grey[200]!;
  Color textColorHover = Colors.black;

  int _exitCounter = 0;

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 500,
                  childAspectRatio: 5,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6),
              itemCount: androidSkills.length,
              itemBuilder: (ctx, index) {
                return Container(
                    child: SkillsWidget(androidSkills[index], androidIcons[index],
                        mWidth, mHeight,ColorHover,textColorHover)
// Row(Skill
//                   children: [
//                     Container(
//                       width: w * 0.08,
//                       height: h * 0.013,
//                       color: Colors.red,
//                     )]));
                    );
              }),
        ),
      ),
    );
  }

  void updateLocation(PointerEvent details) {
    setState(() {
      ColorHover = Colors.red;
      textColorHover = Colors.white;
      // x = details.position.dx;
      // y = details.position.dy;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      ColorHover = Colors.grey[200]!;
      _exitCounter++;
      textColorHover = Colors.black;
    });
  }

  void _incrementEnter(PointerEvent details) {
    setState(() {
      ColorHover = Colors.red;
      textColorHover = Colors.white;

      _exitCounter--;
    });

// return
//  MouseRegion(
//       onEnter: _incrementEnter,
//       onHover: _updateLocation,
//       onExit: _incrementExit,
//       child: FlatButton(
//         color: Colors.white,
//         textColor: Colors.teal[700], //when hovered text color change
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(5),
//         )
// }
  }

  Widget SkillsWidget(
      String title, IconData icon, double mWidth, double mHeight,Color x,Color y) {
    return MouseRegion(
      onHover: updateLocation,
      // onEnter: _incrementEnter,
      onExit: _incrementExit,
      child: Container(
        width: mWidth * 0.2,
        height: mHeight * 0.15,
        color: x,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            size: mHeight * 0.032,
            color: textColorHover,
          ),
          SizedBox(
            width: mWidth * 0.01,
          ),
          Text(
            title,
            style: TextStyle(fontSize: mHeight * 0.032, color: y),
          )
        ]),
      ),
    );
  }
}
