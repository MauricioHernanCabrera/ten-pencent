import 'package:flutter/material.dart';
import 'package:happy/src/pages/step_1.page.dart';
import 'package:happy/src/pages/step_2.page.dart';
import 'package:happy/src/pages/step_2_details.dart';
import 'package:happy/src/pages/step_3.page.dart';
import 'package:happy/src/pages/test.page.dart';

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
      // initialRoute: '/test',
      routes: {
        '/step/1': (BuildContext context) => Step1Page(),
        '/step/2': (BuildContext context) => Step2Page(),
        '/step/2/details': (BuildContext context) => Step2DetailsPage(),
        '/step/3': (BuildContext context) => Step3Page(),
        '/test': (BuildContext context) => TestPage(),
      },
    );
  }
}
