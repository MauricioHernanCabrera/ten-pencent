import 'package:flutter/material.dart';
import 'package:happy/src/models/variables.model.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

class Step3Page extends StatefulWidget {
  @override
  _Step3PageState createState() => _Step3PageState();
}

class _Step3PageState extends State<Step3Page> {
  String step3 = "";

  @override
  Widget build(BuildContext context) {
    return CardStep(
      title: "When do you want to meditate?",
      percentage: 60.0,
      titleButtonFooter: "Set Reminder",
      onPressedButtonFooter: () {},
      child: Expanded(
        child: Column(
          mainAxisAlignment: _defineMainAxisAlignment(),
          // color: Variables.colorPrimary,
          children: [
            Column(
              children: <Widget>[
                _step3(),
                _reminder(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  MainAxisAlignment _defineMainAxisAlignment() {
    if (step3.length == 0) {
      return MainAxisAlignment.center;
    } else {
      return MainAxisAlignment.start;
    }
  }

  Widget _reminder() {
    if (step3.length == 0) return Container();

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "We'll remind you at...",
            style: TextStyle(
              color: Variables.colorDark2,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          _buttonSheet()
        ],
      ),
    );
  }

  Widget _step3() {
    return Container(
      padding: EdgeInsets.only(
        top: 40.0,
        bottom: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Table(
        children: [
          TableRow(
            children: [
              _tableRowStep3(
                "Morning",
                "7:00 AM",
                "assets/morning.jpg",
              ),
              _tableRowStep3(
                "Mid-Day",
                "12:00 PM",
                "assets/mid-day.jpg",
              ),
              _tableRowStep3(
                "Evening",
                "7:00 PM",
                "assets/evening.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tableRowStep3(String title, String time, String image) {
    return Hero(
      tag: title,
      child: Container(
        padding: EdgeInsets.all(6.0),
        child: RaisedButton(
          shape: _buttonSelected(time),
          padding: EdgeInsets.only(
            top: 8.0,
            left: 12.0,
            right: 12.0,
          ),
          color: Variables.colorLight,
          onPressed: () {
            setState(() {
              step3 = time;
            });
          },
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover, // use this
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                  color: Variables.colorDark2,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _buttonSelected(String title) {
    if (title == step3) {
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

  Widget _buttonSheet() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        color: Variables.colorLight,
        onPressed: () {},
        child: Row(
          children: [
            Text(
              step3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Variables.colorDark2,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 28.0,
              color: Variables.colorDark2,
            )
          ],
        ),
      ),
    );
  }
}
