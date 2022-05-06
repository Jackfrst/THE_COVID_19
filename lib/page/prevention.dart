import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Prevention extends StatefulWidget {
  @override
  _PreventionState createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: RichText(
          text: TextSpan(
            text: " Prevention for ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: MediaQuery.of(context).size.width * .05,
            ),
            children: [
              TextSpan(
                text: "COVID-19",
                style: TextStyle(
                  color: Color(0xFF11249F),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white70,
      body: Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              height: 602,
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                children: [
                  _buildPrivention("assets/images/a9.png",
                      "Always wear mask when your going \n around people."),
                  _buildPrivention("assets/images/a10.png",
                      "Wash your hands regularly with soap\nand water, or clean them with \nalcohol-based hand rub."),
                  _buildPrivention("assets/images/a8.png",
                      "Maintain at least 1.5 metre distance \nbetween you and people coughing \nor sneezing."),
                  _buildPrivention("assets/images/a3.png",
                      "Avoid touching your face."),
                  _buildPrivention("assets/images/a4.png",
                      "Cover your mouth and nose when \ncoughing or sneezing."),
                  _buildPrivention("assets/images/a2.png",
                      "Stay home if you feel unwell."),
                  _buildPrivention("assets/images/a11.png",
                      "Refrain from smoking and other \nactivities that weaken the lungs."),
                  _buildPrivention("assets/images/a13.png",
                      "Dont travel anywere "),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivention(String path, String text) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      padding: EdgeInsets.all(8),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Color(0xFF11249F)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(3, 3),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            padding: EdgeInsets.only(right: 10),
            child: Image.asset(path),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
