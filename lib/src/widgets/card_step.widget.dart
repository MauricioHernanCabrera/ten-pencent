import 'package:flutter/material.dart';
import 'package:happy/src/models/variables.model.dart';
import 'package:happy/src/widgets/linear_progress_bar.widget.dart';

class CardStep extends StatelessWidget {
  final String title;
  final String subtitle;
  final double percentage;
  final List<Widget> children;
  final Widget child;
  final VoidCallback onPressedContinue;

  const CardStep({
    this.title,
    this.subtitle = "",
    this.percentage,
    this.children,
    this.child,
    this.onPressedContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Variables.colorGrey,
          child: Column(
            children: <Widget>[
              _header(context),
              _body(),
              _footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body() {
    if (this.children != null) {
      return Expanded(
        child: ListView(
          children: children,
        ),
      );
    }

    if (this.child != null) {
      return child;
    }

    return null;
  }

  Widget _header(BuildContext context) {
    return ClipPath(
      clipper: ClippingClass(),
      child: Container(
        width: double.infinity,
        height: 160,
        color: Variables.colorLight,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 4.0),
            LinearProgressBar(
              width: MediaQuery.of(context).size.width - 220.0,
              percentage: percentage,
            ),
            _headerTitle(),
            _headerSubtitle(),
          ],
        ),
      ),
    );
  }

  Widget _headerTitle() {
    return Container(
      padding: EdgeInsets.only(top: 12.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 34.0,
          color: Variables.colorDark,
        ),
      ),
    );
  }

  Widget _headerSubtitle() {
    if (subtitle == "") return SizedBox();

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18.0,
          color: Variables.colorDark,
        ),
      ),
    );
  }

  Widget _footer() {
    return Hero(
      tag: "footer",
      child: Container(
        width: double.infinity,
        height: 120,
        color: Variables.colorLight,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: onPressedContinue,
                color: Variables.colorPrimary,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 4),
      size.height,
      size.width,
      size.height - 40,
    );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
