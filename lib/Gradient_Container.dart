import 'package:flutter/material.dart';
import 'package:untitled2/textstyle.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled2/diceRoller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//StatefulWidget 상태를 관리

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.rgb1, this.rgb2, {super.key});

  const GradientContainer.purple({super.key})
      : rgb1 = Colors.deepPurple,
        rgb2 = Colors.lightBlue;

  final Color rgb1;
  final Color rgb2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [rgb1, rgb2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );

    // return  Container(
    //   decoration:   BoxDecoration(
    //     gradient: LinearGradient(
    //       colors:  [rgb1,  rgb2
    //       ],
    //       begin: startAlignment,
    //       end: endAlignment,),
    //   ),
    //   child: Center(
    //     child: TextContainer("Hello Jmm"),
    //   ),
    //
    // );
  }
}
