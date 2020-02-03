import 'package:flutter/material.dart';
import 'package:lab1/screens/home.dart';
import 'package:lab1/screens/thirdPage.dart';
import 'package:lab1/utility/mystyle.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString = "SecondPage"; //ประกาศตัวแปร
  var textEditController = new TextEditingController();

  Widget toHomePage() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        color: MyStyle().textColor,
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          var rount =
              MaterialPageRoute(builder: (BuildContext context) => Home());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wall.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                toHomePage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
