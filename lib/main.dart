import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';

void main() {
  runApp(RandomBackground());
}

class RandomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HelloThere(),
    );
  }
}
