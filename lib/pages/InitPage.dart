import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:highq/pages/CategoryPage.dart';

class InitialPage extends StatefulWidget {
  @override
  _initState createState() => new _initState();
}

class _initState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bb.gif'),
                fit: BoxFit.fitHeight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              alignment: AlignmentDirectional.center,
              child: GradientText(
                'HIgh-Q',
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.lightGreen,
                  Colors.pinkAccent
                ]),
                style: TextStyle(fontSize: 70),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width,
                height: 100,
                alignment: AlignmentDirectional.center,
                child: Container(
                  width: 250,
                  height: 70,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(58, 7, 224, 1),
                      border: Border.all(
                          color: Color.fromRGBO(78, 7, 224, 1), width: 3),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 10)
                      ],
                      borderRadius: BorderRadius.circular(50)),
                  child: Text('PLAY GAME',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              alignment: AlignmentDirectional.center,
              child: Container(
                width: 250,
                height: 70,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(58, 7, 224, 1),
                    border: Border.all(
                        color: Color.fromRGBO(78, 7, 224, 1), width: 3),
                    boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10)],
                    borderRadius: BorderRadius.circular(50)),
                child: Text('HIGHSCORE',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              alignment: AlignmentDirectional.center,
              child: Container(
                width: 250,
                height: 70,
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 2, 43, 1),
                    border: Border.all(
                        color: Color.fromRGBO(250, 35, 75, 1), width: 3),
                    boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10)],
                    borderRadius: BorderRadius.circular(50)),
                child: Text('QUIT',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
