import 'package:flutter/material.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  String step3 = "";

  @override
  Widget build(BuildContext context) {
    return CardStep(
      title: "When do you want to meditate?",
      percentage: 60.0,
      onPressedContinue: () {
        print("nadaaa");
      },
      children: <Widget>[],
    );
  }
}
