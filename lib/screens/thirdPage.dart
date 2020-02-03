import 'package:flutter/material.dart';
import 'package:lab1/screens/home.dart';
import 'package:lab1/utility/mystyle.dart';

class ThirdPage extends StatefulWidget {
  final String valueFromSecondPage;
  ThirdPage({Key key, this.valueFromSecondPage}) : super(key: key);
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final String titleString = "ThirdPage"; //ประกาศตัวแปร

  Widget toHomePage() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        color: MyStyle().textColor,
        icon: Icon(
          Icons.receipt,
          color: Colors.white,
        ),
        label: Text(
          'Register',
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
    // return Scaffold(appBar: AppBar(
    //     title: Text(titleString),
    //   ),
    //   body: Text("${widget.valueFromSecondPage}"),
    // );
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
