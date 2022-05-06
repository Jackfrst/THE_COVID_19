import 'package:flutter/material.dart';

import 'package:the_covid_19/constant.dart';
import 'package:the_covid_19/Home/home.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  int questionIndex = 0;
  int total = 0;
  var questions = [
    {
      "question": ' Do you have fever ? ',
      "response": [
        {"text": 'Yes', "score": 7},
        {"text": 'Slight', "score": 3},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have cough ? ',
      "response": [
        {"text": 'Yes', "score": 7},
        {"text": 'Slight', "score": 3},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Tiredness ? ',
      "response": [
        {"text": 'Yes', "score": 7},
        {"text": 'Slight', "score": 3},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Headache ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Aches and Pains ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Sore throat ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Diarrhoea ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Conjunctivitis ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Loss of smell & test ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Rash on skin ? ',
      "response": [
        {"text": 'Yes', "score": 10},
        {"text": 'Slight', "score": 5},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Difficulty breathing ? ',
      "response": [
        {"text": 'Yes', "score": 30},
        {"text": 'Slight', "score": 10},
        {"text": 'No', "score": 0},
      ],
    },
    {
      "question": ' Do you have Chest pain ? ',
      "response": [
        {"text": 'Yes', "score": 30},
        {"text": 'Slight', "score": 10},
        {"text": 'No', "score": 0},
      ],
    },
  ];
  void function(int score) {
    total += score;
    setState(() {
      questionIndex += 1;
    });
  }

  void reset() {
    setState(() {
      total = 0;
      questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: _appbar(context),
      body: ListView(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: questionIndex < questions.length
                      ? test(function, questions, questionIndex,context)
                      : end(total, reset, context),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.refresh),
        label: Text("Reset"),
        onPressed: reset,
        elevation: 10,
        highlightElevation: 10,
      ),
    );
  }
}

Widget _appbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.lightBlueAccent,
    title: RichText(
      text: TextSpan(
        text: " Testing ",
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
  );
}

Widget question(String text, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(5),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * .5465,
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
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.longestSide * .05,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget answer(Function handler, String response, BuildContext context) {
  Color buttonColor = Colors.white;
  if (response == "Yes") {
    buttonColor = Colors.red;
  } else if (response == "Slight") {
    buttonColor = Colors.blue;
  } else {
    buttonColor = Colors.green;
  }
  return Container(
    margin: EdgeInsets.all(5),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * .08,
    child: RaisedButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Text(
          response,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: handler),
  );
}

Widget test(
    Function handler, List<Map<String, Object>> questions, int questionIndex , BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: Column(
      children: [
        question(questions[questionIndex]['question'],context),
        SizedBox(
          height: 5,
        ),
        ...(questions[questionIndex]['response'] as List<Map<String, Object>>)
            .map((response) {
          return answer(() => handler(response['score']), response['text'],context);
        }).toList(),
      ],
    ),
  );
}

Widget end(int total, Function reset, BuildContext context) {
  Color textc = Colors.black;
  Color backc = Colors.white;
  String iconPath = "";
  String resultext = "";
  if (total >= 30) {
    resultext = " You need to take the COVID-19 test immediately !!!";
    iconPath = "assets/images/major.png";
  } else if (total >= 15) {
    resultext = "Minor posibility of infection !!";
    iconPath = "assets/images/minor.png";
  } else if (total >= 0) {
    iconPath = "assets/images/ok.png";
    resultext = "You might not be infected still you can test !";
  }
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        width: double.infinity,
        height: MediaQuery.of(context).size.height*.85,
        decoration: BoxDecoration(
          color: backc,
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
            SizedBox(
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * .4,
              width : MediaQuery.of(context).size.width * .6,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(iconPath),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  resultext,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.longestSide * .04,
                    fontWeight: FontWeight.bold,
                    color: textc,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //FlatButton(onPressed: reset, child: Text("Reset"))
    ],
  );
}
