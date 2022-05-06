import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: RichText(
          text: TextSpan(
            text: " About ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 25,
            ),
            children: [
              TextSpan(
                text: " US ",
                style: TextStyle(
                  color: Color(0xFF11249F),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Stack(children: [
          appinfo(),
          dev(context),
        ]),
      ),
    );
  }
}

Widget appinfo() {
  return Column(
    children: [
      logo(),
      appname(),
      appver(),
    ],
  );
}

Widget logo() {
  return Container(
    padding: EdgeInsets.all(15),
    child: Center(
      child: Container(
        height: 100,
        width: 100,
        child: Image.asset("assets/images/aa1.png"),
      ),
    ),
  );
}

Widget appname() {
  return Container(
    child: Center(
      child: Text(
        " The COVID-19 ",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20,
        ),
      ),
    ),
  );
}

Widget appver() {
  return Container(
    child: Center(
      child: Text(
        " Beta : 0.1 ",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    ),
  );
}

Widget dev(BuildContext context) {
  return Positioned(
    bottom: 30,
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          " ARML Technologies ",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
    ),
  );
}
