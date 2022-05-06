import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Vaccine extends StatefulWidget {
  @override
  _VaccineState createState() => _VaccineState();
}

class _VaccineState extends State<Vaccine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: RichText(
          text: TextSpan(
            text: " Vaccine ",
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
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10, left: 5),
                      height: MediaQuery.of(context).size.height * .24,
                      width: MediaQuery.of(context).size.width * .37,
                      child: Image.asset("assets/images/vac1.jpg"),
                    ),
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .24,
                        width: MediaQuery.of(context).size.width * .6,
                        child: Text(
                          "At the same time, more than 200 additional vaccine candidates are in development.\n\n" +
                              "As of 18 February 2021, at least seven different vaccines across three platforms have been rolled out in countries.",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Approved Vaccine :",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.longestSide * .04,
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.longestSide * .55,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildVaccine(
                        "assets/images/vacfi.jpg",
                        "tozinameran",
                        "Brand : (Pfizer–BioNTech)",
                        "Age : 16 years and older",
                        "Dose : 2 shots(21 days apart)",
                        "Vaccinated : 2 weeks after 2nd dose",
                        context),
                    _buildVaccine(
                        "assets/images/vacmo.jpg",
                        "Moderna COVID‑19 Vaccine",
                        "Brand : (Moderna)",
                        "Age : 18 years and older",
                        "Dose : 2 shots (28 days apart)",
                        "Vaccinated : 2 weeks after 2nd dose",
                        context),
                    _buildVaccine(
                        "assets/images/vacjon.jpg",
                        "Janssen COVID-19 Vaccine",
                        "Brand : (Johnson & Johnson’s Janssen)",
                        "Age : 18 years and older",
                        "Dose : 1 shot",
                        "Vaccinated : 2 weeks after 2nd shot",
                        context),
                    _buildVaccine(
                        "assets/images/vacas2.jpg",
                        "AstraZeneca",
                        "Brand : (Oxford–AstraZeneca)",
                        "Age : 18 years and older",
                        "Dose : 2 shots(12 week apart)",
                        "Vaccinated : 3 weeks after 2nd shot",
                        context),
                    _buildVaccine(
                        "assets/images/vacsi.jpg",
                        "BBIBP-CorV",
                        "Brand : (Sinopharm)",
                        "Age : 18 years and older",
                        "Dose : 1 shots",
                        "Vaccinated : 1 weeks after shot",
                        context),
                    _buildVaccine(
                        "assets/images/vacspu.jpg",
                        "Sputnik V COVID",
                        "Brand:(Gamaleya Res. In. of Epidemiology)",
                        "Age : 18 years and older",
                        "Dose : 1 shots",
                        "Vaccinated : 1 weeks after shot",
                        context),
                    _buildVaccine(
                        "assets/images/vacco.jpg",
                        "Covaxin",
                        "Brand : ( Bharat Biotech )",
                        "Age : 18 years and older",
                        "Dose : 2 shots(4 weeks apart)",
                        "Vaccinated : 2 weeks after 2nd shot",
                        context),
                    _buildVaccine(
                        "assets/images/covid1.webp",
                        "Convidecia",
                        "Brand:( CanSino Biologics )",
                        "Age : 18 years and older",
                        "Dose : 1 shots",
                        "Vaccinated : 1 weeks after shot",
                        context),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildVaccine(String path, String name, String brand, String age,
    String dose, String full, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    height: MediaQuery.of(context).size.longestSide * .55,
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
        Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.longestSide * .30,
            child: Image.asset(path),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.longestSide * .005,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF11249F),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            brand,
            style: TextStyle(
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            age,
            style: TextStyle(
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            dose,
            style: TextStyle(
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            full,
            style: TextStyle(
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildVaccine1(String path, String name, String brand, String age,
    String dose, String full, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    height: MediaQuery.of(context).size.longestSide * .55,
    width: MediaQuery.of(context).size.width * .95,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.blue[100],
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
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
    child: Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.longestSide * .30,
            child: Image.asset(path),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.longestSide * .005,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF11249F),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            brand,
            style: TextStyle(
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            age,
            style: TextStyle(
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            dose,
            style: TextStyle(
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            full,
            style: TextStyle(
            ),
          ),
        ),
      ],
    ),
  );
}
