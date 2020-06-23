import 'package:flutter/material.dart';
import 'package:happy/src/models/variables.model.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

class Step1Page extends StatefulWidget {
  @override
  _Step1PageState createState() => _Step1PageState();
}

class _Step1PageState extends State<Step1Page> {
  String step1 = "";

  @override
  Widget build(BuildContext context) {
    return CardStep(
      title: "Do you meditate?",
      subtitle: "This helps us personalize your experience.",
      percentage: 20.0,
      onPressedButtonFooter: step1 == ""
          ? null
          : () {
              Navigator.pushNamed(context, '/step/2');
            },
      children: <Widget>[
        _step1(),
      ],
    );
  }

  Widget _step1() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 32.0),
          _button("Nope", "nope"),
          SizedBox(height: 24.0),
          _button("Tried It", "tried-it"),
          SizedBox(height: 24.0),
          _button("Regularly", "regularly"),
        ],
      ),
    );
  }

  RoundedRectangleBorder _defineShapeButton(String value) {
    if (value == step1) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Variables.colorPrimary, width: 2.0),
      );
    } else {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      );
    }
  }

  Widget _button(String title, String value) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          setState(() {
            step1 = value;
          });
        },
        shape: _defineShapeButton(value),
        color: Variables.colorLight,
        textColor: Variables.colorDark,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
