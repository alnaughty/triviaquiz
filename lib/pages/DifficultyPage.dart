import 'package:flutter/material.dart';

class DifficultyPage extends StatefulWidget {
  List questions;
  DifficultyPage(this.questions);
  @override
  _diffState createState() => _diffState();
}

class _diffState extends State<DifficultyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orangeAccent,
        child: PageView.builder(
          itemCount: widget.questions.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(widget.questions[index]['difficulty']),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
