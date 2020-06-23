import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          constraints: BoxConstraints.expand(),
                          color: Colors.blue,
                          child: Text("box 1")),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          constraints: BoxConstraints.expand(),
                          color: Colors.red,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  color: Colors.yellow,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                            constraints:
                                                BoxConstraints.expand(),
                                            color: Colors.lightGreen,
                                            child: Text("box 2")),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                            constraints:
                                                BoxConstraints.expand(),
                                            color: Colors.lightBlue,
                                            child: Text("box 3")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  color: Colors.yellow,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                            constraints:
                                                BoxConstraints.expand(),
                                            color: Colors.purple,
                                            child: Text("box 4")),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                            constraints:
                                                BoxConstraints.expand(),
                                            color: Colors.orange,
                                            child: Text("")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                color: Colors.yellow,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          constraints: BoxConstraints.expand(),
                          color: Colors.yellow,
                          child: Text("box 5")),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          constraints: BoxConstraints.expand(),
                          color: Colors.green,
                          child: Text("box 6")),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
