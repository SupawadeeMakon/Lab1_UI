import 'package:flutter/material.dart';
import 'package:lab1/screens/thirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString = "SecondPage"; //ประกาศตัวแปร
  var textEditController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            controller: textEditController,
          ),
        ),
        ListTile(
          title: RaisedButton(
            child: Text('Next to Third Page'),
            onPressed: () {
              var rount = MaterialPageRoute(
                  builder: (BuildContext context) => ThirdPage(
                        valueFromSecondPage: textEditController.text,
                      ));
              Navigator.of(context).push(rount);
            },
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: widget,
      // body: Container(
      //   child: Center(
      //     child: Image.asset('images/wall.png'),
      //   ),
      // ),
    );
  }
}
