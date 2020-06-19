import 'package:flutter/material.dart';
import 'package:happy/src/models/Variables.model.dart';

class LinearProgressBar extends StatelessWidget {
  final double width;
  final double percentage;

  const LinearProgressBar({this.width, this.percentage});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "percentage",
      child: Container(
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 8.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Variables.colorGrey2,
              ),
            ),
            Container(
              width: percentage / 100.0 * width,
              height: 8.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Variables.colorPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
