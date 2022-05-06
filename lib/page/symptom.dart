import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Symptom extends StatefulWidget {
  @override
  _SymptomState createState() => _SymptomState();
}

class _SymptomState extends State<Symptom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: " Symptoms of ",
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
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          _buildSymptom(
              "assets/images/1.png", "Fever", "(Most common symptoms)"),
          _buildSymptom(
              "assets/images/2.png", "Dry cough", "(Most common symptoms)"),
          _buildSymptom(
              "assets/images/6.png", "Tiredness", "(Most common symptoms)"),
          _buildSymptom(
              "assets/images/3.png", "Headache", "(Less common symptoms)"),
          _buildSymptom("assets/images/7.png", "Aches and Pains",
              "(Less common symptoms)"),
          _buildSymptom(
              "assets/images/8.webp", "Sore throat", "(Less common symptoms)"),
          _buildSymptom(
              "assets/images/9.png", "Diarrhoea", "(Less common symptoms)"),
          _buildSymptom("assets/images/10.png", "Conjunctivitis",
              "(Less common symptoms)"),
          _buildSymptom("assets/images/11.png", "Loss of smell",
              "(Less common symptoms)"),
          _buildSymptom("assets/images/12.png", "Loss of Taste",
              "(Less common symptoms)"),
          _buildSymptom(
              "assets/images/13.png", "Rash on skin", "(Less common symptoms)"),
          _buildSymptom("assets/images/14.png", "Difficulty breathing",
              "(Serious symptoms)"),
          _buildSymptom(
              "assets/images/4.png", "Chest pain", "(Serious symptoms)"),
        ],
      ),
    );
  }

  Widget _buildSymptom(String path, String text, String text2) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .95,
      width: MediaQuery.of(context).size.width * .95,
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
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .55,
            width: MediaQuery.of(context).size.width * .9,
            padding: EdgeInsets.only(right: 15),
            child: Image.asset(path),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.05,
                color: Color(0xFF11249F),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              text2,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.025,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
