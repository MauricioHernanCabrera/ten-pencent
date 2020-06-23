import 'package:flutter/material.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

import 'package:happy/src/models/step2_arguments.model.dart';
import 'package:happy/src/models/variables.model.dart';

class Step2DetailsPage extends StatefulWidget {
  @override
  _Step2DetailsPageState createState() => _Step2DetailsPageState();
}

class _Step2DetailsPageState extends State<Step2DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Step2Arguments args = ModalRoute.of(context).settings.arguments;
    print(args.title);

    return CardStep(
      title: "What brings you to Ten Percent?",
      percentage: 40.0,
      onPressedButtonFooter: () {
        Navigator.pushNamed(context, '/step/3');
      },
      children: [
        Column(
          children: [
            _cardTitle(args),
            _subtitle(args),
          ],
        )
      ],
    );
  }

  Widget _cardTitle(Step2Arguments args) {
    return Container(
      padding: EdgeInsets.only(
        top: 32.0,
        left: 32.0,
        right: 32.0,
        bottom: 20.0,
      ),
      width: 260,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: Variables.colorPrimary, width: 2.0),
        ),
        padding: EdgeInsets.only(
          top: 24.0,
          left: 24.0,
          right: 24.0,
          bottom: 24.0,
        ),
        color: Variables.colorLight,
        onPressed: () {},
        child: Column(
          children: [
            Hero(
              tag: args.title,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image(
                      image: AssetImage(args.image),
                      fit: BoxFit.cover, // use this
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              args.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Widget _subtitle(Step2Arguments args) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Text(
        args.subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Variables.colorGrey3,
        ),
      ),
    );
  }
}
