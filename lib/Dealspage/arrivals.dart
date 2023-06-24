import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arrivals extends StatefulWidget {
  const Arrivals({Key? key}) : super(key: key);

  @override
  State<Arrivals> createState() => _ArrivalsState();
}

class _ArrivalsState extends State<Arrivals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
