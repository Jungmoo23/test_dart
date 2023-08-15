
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(this.oitputText, {super.key});
  final String oitputText ;
  // @override
  // Widget build(BuildContext context) {
  //   return  Container(
  //     child: Center(
  //       child: Text(t,
  //           style: TextStyle(fontSize: 28,color: Colors.white)
  //       ),
  //     ),
  //   );

  @override
  Widget build(BuildContext context) {
    return   Text(oitputText,
            style: const TextStyle(fontSize: 28,color: Colors.white),
        );


  }

}