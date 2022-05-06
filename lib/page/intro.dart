import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            _buildHeader(),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Image.asset("assets/images/virus4 .png"),
                ),
              ),
            ),
            _buildfooter(context),
          ],
        ),
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 300,
          height: 300,
          child: Image.asset("assets/images/intro1.png"),
        ),
      ),
    );
  }

  Widget _buildfooter(BuildContext context) {
    return Positioned(
      bottom: 50,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * .85,
                height: 50,
                child: Center(
                  child: Text(
                    " Get Started ",
                    style: TextStyle(
                      color: armlPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
