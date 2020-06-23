import 'package:flutter/material.dart';
import 'package:happy/src/models/step2_arguments.model.dart';
import 'package:happy/src/models/variables.model.dart';
import 'package:happy/src/widgets/card_step.widget.dart';

class Step2Page extends StatefulWidget {
  @override
  _Step2PageState createState() => _Step2PageState();
}

class _Step2PageState extends State<Step2Page> {
  String step2 = "";

  @override
  Widget build(BuildContext context) {
    return CardStep(
      title: "What brings you to Ten Percent?",
      percentage: 40.0,
      onPressedButtonFooter: null,
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
              _tableRowStep2(
                "Learn to Medicate",
                "Learn the basics of meditation in a simple, easy, fun away.",
                "assets/1.jpg",
              ),
              _tableRowStep2(
                "Sleep Better",
                "Let go of warries more easily, becoming calmer and more balanced.",
                "assets/2.jpg",
              ),
              _tableRowStep2(
                "Increase Focus",
                "Become a more loving, compassionate, and respectful human.",
                "assets/3.jpg",
              ),
            ],
          ),
          TableRow(
            children: [
              _tableRowStep2(
                "Reduce Stress",
                "Become more productive and less distracted",
                "assets/4.jpg",
              ),
              _tableRowStep2(
                "Improve Relationships",
                "Relax your mind and body, falling into a deep and restful sleep.",
                "assets/5.jpg",
              ),
              _tableRowStep2(
                "Be Happier",
                "Switch your default settings from `meh` yo `pretty good, actually`.",
                "assets/6.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tableRowStep2(String title, String subtitle, String image) {
    return Hero(
      tag: title,
      child: Container(
        padding: EdgeInsets.all(6.0),
        child: SizedBox(
          height: 140.0,
          child: RaisedButton(
            shape: _buttonSelected(title),
            padding: EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
            color: Variables.colorLight,
            onPressed: () {
              setState(() {
                step2 = title;
              });
              Navigator.pushNamed(
                context,
                '/step/2/details',
                arguments: Step2Arguments(
                  title: title,
                  subtitle: subtitle,
                  image: image,
                ),
              );
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
                  height: 4.0,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w400),
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
