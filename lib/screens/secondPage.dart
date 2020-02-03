import 'package:flutter/material.dart';
import 'package:lab1/screens/home.dart';
import 'package:lab1/screens/showCal.dart';
import 'package:lab1/utility/mystyle.dart';

class SecondPage extends StatefulWidget {
  final String emailFromHomePage, passFromHomePage;
  SecondPage({Key key, this.emailFromHomePage, this.passFromHomePage})
      : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString = "SecondPage"; //ประกาศตัวแปร
  //var textEditController = new TextEditingController();
  var valueX1 = new TextEditingController();
  var valueY1 = new TextEditingController();

  Widget email() {
    return Text("ยินดีต้อนรับคุณ${widget.emailFromHomePage}");
  }

  Widget pass() {
    return Text("${widget.passFromHomePage}");
  }

  Widget valueX() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.format_list_numbered,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Enter value X',
            hintText: '10'),
        controller: valueX1,
      ),
    );
  }

  Widget valueY() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.format_list_numbered,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Enter value Y',
            hintText: '20'),
        controller: valueY1,
      ),
    );
  }

  Widget calculator() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        color: MyStyle().textColor,
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          var rount = MaterialPageRoute(
              builder: (BuildContext context) => ShowCal(
                    valueXfromSecond: valueX1.text,
                    valueYfromSecond: valueY1.text,
                  ));
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ยินดีต้อนรับคุณ${widget.emailFromHomePage}"),
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
                //email(),
                valueX(),
                valueY(),
                calculator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
