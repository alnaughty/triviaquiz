import 'package:flutter/material.dart';
import 'package:highq/data/data.dart';
import 'package:highq/pages/DifficultyPage.dart';

class CategoryPage extends StatefulWidget {
  @override
  _catState createState() => new _catState();
}

class _catState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var x = 0; x < questions[0]['categories'].length; x++)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => DifficultyPage(questions[0]['categories'][x]['question'])));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  color: Colors.red,
                  alignment: AlignmentDirectional.center,
                  child: Text(questions[0]['categories'][x]['cat_name']),
                ),
              )
          ],
        ),
      ),
    );
  }
}
