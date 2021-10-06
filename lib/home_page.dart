import 'package:flutter/material.dart';
import 'package:untitled1/random_int.dart';

class HelloThere extends StatefulWidget {
  const HelloThere({Key? key}) : super(key: key);

  @override
  _HelloThereState createState() => _HelloThereState();
}

class _HelloThereState extends State<HelloThere> {
  @override
  Widget build(BuildContext context) {
    final TextStyle _style = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontStyle: FontStyle.italic,
      fontSize: MediaQuery.of(context).size.height * 0.05,
    );

    int _red = randomInt(255);
    int _blue = randomInt(255);
    int _green = randomInt(255);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          color: Color.fromRGBO(_red, _blue, _green, 1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hey there",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Container(
                  height: 100,
                  child: Center(
                    child: Text(
                      "RGB:($_red, $_blue, $_green)",
                      style: _style,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
