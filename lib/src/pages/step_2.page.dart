import 'package:flutter/material.dart';
import 'package:happy/src/models/variables.model.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  String step2 = "";

  @override
  Widget build(BuildContext context) {
    return CardStep(
      title: "What brings you to Ten Percent?",
      percentage: 40.0,
      onPressedContinue: null,
      children: [
        _step2(),
      ],
    );
  }

  Widget _step2() {
    return Container(
      padding: EdgeInsets.only(
        top: 40.0,
        bottom: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      width: double.infinity,
      child: Table(
        children: [
          TableRow(
            children: [
              _tableRowStep2("Learn to Medicate"),
              _tableRowStep2("Sleep Better"),
              _tableRowStep2("Increase Focus"),
            ],
          ),
          TableRow(
            children: [
              _tableRowStep2("Reduce Stress"),
              _tableRowStep2("Improve Relationships"),
              _tableRowStep2("Be Happier"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tableRowStep2(String title) {
    return Hero(
      tag: title,
      child: Container(
        padding: EdgeInsets.all(7.0),
        child: SizedBox(
          height: 140.0,
          child: RaisedButton(
            shape: _buttonSelected(title),
            padding: EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
            color: Variables.colorLight,
            onPressed: () {
              Navigator.pushNamed(context, '/step/2/details', arguments: title);
            },
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image(
                        image: AssetImage('assets/scroll-1.png'),
                        fit: BoxFit.cover, // use this
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _buttonSelected(String title) {
    if (title == step2) {
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
}
