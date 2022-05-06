import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_covid_19/page/about.dart';

import 'package:the_covid_19/page/bio.dart';
import 'package:the_covid_19/page/vaccine.dart';
import 'package:the_covid_19/page/wip.dart';
import './constant.dart';
import './armlclipper.dart';
import 'package:the_covid_19/page/intro.dart';
import 'package:the_covid_19/page/precaution.dart';
import 'package:the_covid_19/page/prevention.dart';
import 'package:the_covid_19/page/symptom.dart';
import 'package:the_covid_19/page/statistics_page.dart';
import 'package:the_covid_19/page/test.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ClipPath(
                clipper: ArmlClipper(),
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 20, top: 50),
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF3383CD),
                        Color(0xFF11249F),
                      ],
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/virus.png"),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/Drcorona.svg",
                              width: 230,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                            Positioned(
                              top: 20,
                              left: 150,
                              child: Text(
                                " Stay Home \n Keep yourself \n & \n Everyone safe ",
                                style: armlHeadingTextStyle.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  button("Precaution", Precaution(), context),
                  button("Symptoms", Symptom(), context)
                ],
              ),
              Row(
                children: [
                  button("Testing", Test(), context),
                  button("Vaccine", Vaccine(), context)
                ],
              ),
              Row(
                children: [
                  button("Biography", Bio(), context),
                  button("About", About(), context)
                ],
              ),
              /*Row(
              children: [
                Container(
                  height: 55,
                  width: 185,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => StatisticPage()));
                    },
                    child: Text(" World Infection "),
                  ),
                ),
              ],
            ),*/
            ],
          ),
        ],
      ),
    );
  }
}

Widget button(String text, Object buttonfunc, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * .1,
    width: MediaQuery.of(context).size.width * .45,
    margin: EdgeInsets.all(10),
    child: RaisedButton(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => buttonfunc));
      },
      child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.shortestSide*.038,
          ),
      ),
    ),
  );
}
