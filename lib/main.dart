import 'package:flutter/material.dart';
import 'package:the_covid_19/Home/home.dart';

import 'package:the_covid_19/page/about.dart';
import 'package:the_covid_19/page/bio.dart';
import 'package:the_covid_19/page/prevention.dart';
import 'package:the_covid_19/page/symptom.dart';
import 'package:the_covid_19/page/vaccine.dart';
import './constant.dart';
import 'package:the_covid_19/page/intro.dart';
import 'package:the_covid_19/page/precaution.dart';
import 'package:the_covid_19/page/statistics_page.dart';
import 'package:the_covid_19/page/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THE COVID 19',
      theme: ThemeData(
        scaffoldBackgroundColor: armlBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: armlBodyTextColor,
          ),
        ),
      ),
      home: Intro(),
    );
  }
}
