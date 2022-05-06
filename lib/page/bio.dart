import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: RichText(
          text: TextSpan(
            text: " THE ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: MediaQuery.of(context).size.width * .05,
            ),
            children: [
              TextSpan(
                text: " COVID-19 ",
                style: TextStyle(
                  color: Color(0xFF11249F),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 5),
                      height: MediaQuery.of(context).size.longestSide * .15,
                      width: MediaQuery.of(context).size.width * .33,
                      child: Image.asset("assets/images/c2.jpg"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .65,
                      child: Text(
                        "Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.\n\n" +
                            "Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness.",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width * .65,
                      child: Text(
                        "COVID-19 is the disease caused by a new coronavirus called SARS-CoV-2.  WHO first learned of this new virus on " +
                            "31 December 2019, following a report of a cluster of cases of ‘viral pneumonia’ in Wuhan, China.",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      height: MediaQuery.of(context).size.longestSide * .15,
                      width: MediaQuery.of(context).size.width * .33,
                      child: Image.asset("assets/images/c1.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .98,
                  child: Image.asset("assets/images/bio1.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Older people, and those with underlying medical problems like cardiovascular disease, diabetes, " +
                        "chronic respiratory disease, and cancer are more likely to develop serious illness ",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Text(
                    "The best way to prevent and slow down transmission is to be well informed about the COVID-19 virus, the disease it causes and how it spreads. " +
                        "Protect yourself and others from infection by washing your hands or using an alcohol based rub frequently and not touching your face.",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Text(
                    "The COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person coughs or sneezes, " +
                        "so it’s important that you also practice respiratory etiquette (for example, by coughing into a flexed elbow).",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Text(
                    " More at :",
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Text(
                    "https://www.who.int/health-topics/coronavirus#tab=tab_1",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
