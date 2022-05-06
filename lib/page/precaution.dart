import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Precaution extends StatefulWidget {
  @override
  _PrecautionState createState() => _PrecautionState();
}

class _PrecautionState extends State<Precaution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: RichText(
          text: TextSpan(
            text: " Precaution for ",
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
      body: Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            _buildPricaution("assets/images/a9.png",
                "Always wear mask when your going out."),
            _buildPricaution("assets/images/a10.png",
                "Wash your hands regularly with soap and water, or clean them with alcohol-based hand rub."),
            _buildPricaution(
                "assets/images/a6.png", "Sanitize your peripherals regularly "),
            _buildPricaution("assets/images/a8.png",
                "Maintain at least 1.5 metre distance between you and people coughing or sneezing."),
            _buildPricaution(
                "assets/images/a3.png", "Avoid touching your face."),
            _buildPricaution("assets/images/a4.png",
                "Cover your mouth and nose when coughing or sneezing."),
            _buildPricaution(
                "assets/images/a2.png", "Stay home if you feel unwell."),
            _buildPricaution("assets/images/a11.png",
                "Refrain from smoking and other activities that weaken the lungs."),
            _buildPricaution("assets/images/a13.png",
                "Practice physical distancing by avoiding unnecessary travel and staying away from large groups of people."),
          ],
        ),
      ),
    );
  }

  Widget _buildPricaution(String path, String text) {
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
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue[100],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.22,
            padding: EdgeInsets.only(right: 10),
            child: Image.asset(path),
          ),
          Container(
            width: MediaQuery.of(context).size.width*.69,
            padding: EdgeInsets.only(left: 10),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
