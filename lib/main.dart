import 'package:flutter/material.dart';

import 'dicepage.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            "Dice App",
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: new DicePage(),
      ),
    );
  }
}
