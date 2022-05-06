import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Wip extends StatefulWidget {
  @override
  _Wip createState() => _Wip();
}

class _Wip extends State<Wip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: RichText(
          text: TextSpan(
            text: " Work in ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 25,
            ),
            children: [
              TextSpan(
                text: "Progress",
                style: TextStyle(
                  color: Color(0xFF11249F),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child:Center(
          child :Text(
            "Work in progress",
          ) ,
        ),
      ),
    );
  }
}
