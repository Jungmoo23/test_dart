import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1; // 0~ 5
    });
    debugPrint("Really?");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("Call DiceRoller");
    return Column(

      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "/Users/jm/AndroidStudioProjects/untitled2/assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: EdgeInsets.only(top: 20,),
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 28,
              )),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
