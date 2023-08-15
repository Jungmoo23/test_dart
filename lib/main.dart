import 'package:flutter/material.dart';
import 'Gradient_Container.dart';

const rgb1 = <int>[255, 26, 2, 80];
const rgb2 = <int>[255, 45, 7, 98];

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Colors.deepPurple, Colors.lightBlue),
    ),
  ));
}
