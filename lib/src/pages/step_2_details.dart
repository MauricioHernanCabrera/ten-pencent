import 'package:flutter/material.dart';
import 'package:happy/src/models/variables.model.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

class Step2Details extends StatefulWidget {
  @override
  _Step2DetailsState createState() => _Step2DetailsState();
}

class _Step2DetailsState extends State<Step2Details> {
  @override
  Widget build(BuildContext context) {
    String titleSelected = ModalRoute.of(context).settings.arguments;

    return CardStep(
      title: "What brings you to Ten Percent?",
      percentage: 40.0,
      onPressedContinue: () {
        Navigator.pushNamed(context, '/step/3');
      },
      child: Expanded(
        child: Column(
          children: <Widget>[
            _tableRowStep2(
              titleSelected,
              "Learn the basics of meditation in a simple, easy, fun away.",
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
      // child: PageView.builder(
      //   pageSnapping: false,
      //   controller: PageController(viewportFraction: 0.3, initialPage: 1),
      //   itemCount: list.length,
      //   itemBuilder: (context, i) => _tableRowStep2(list[i]),
      // ),
    );
  }

  Widget _tableRowStep2(String title, String subtitle) {
    Widget _cardTitle = Container(
      padding: EdgeInsets.all(32.0),
      width: 320,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: Variables.colorPrimary, width: 4.0),
        ),
        padding:
            EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0, bottom: 32.0),
        color: Variables.colorLight,
        onPressed: () {
          Navigator.pushNamed(context, '/step/3');
        },
        child: Column(
          children: [
            Hero(
              tag: title,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image(
                      image: AssetImage('assets/scroll-1.png'),
                      fit: BoxFit.cover, // use this
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );

    Widget _subtitle = Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: Variables.colorGrey3,
        ),
      ),
    );

    return Column(
      children: [
        _cardTitle,
        _subtitle,
      ],
    );
  }
}
