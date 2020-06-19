import 'package:flutter/material.dart';
import 'package:happy/src/pages/step_1.page.dart';
import 'package:happy/src/pages/step_2.page.dart';
import 'package:happy/src/pages/step_2_details.dart';
import 'package:happy/src/pages/step_3.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ten Percent',
      initialRoute: '/step/1',
      // primaryColor: Color.fromRGBO(230, 46, 56, 1.0),
      // lightColor: Color.fromRGBO(255, 255, 255, 1.0),
      // greyColor: Color.fromRGBO(236, 240, 241, 1.0),
      // colorDark: Color.fromRGBO(43, 43, 49, 1.0),
      routes: {
        '/step/1': (BuildContext context) => Step1(),
        '/step/2': (BuildContext context) => Step2(),
        '/step/2/details': (BuildContext context) => Step2Details(),
        '/step/3': (BuildContext context) => Step3(),
      },
    );
  }
}
