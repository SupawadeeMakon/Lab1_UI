import 'package:flutter/material.dart';
import 'package:lab1/screens/secondPage.dart';
import 'package:lab1/utility/mystyle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showdata1() {
    return Text('showdata1');
  }

  Widget showdata2() {
    return Text(
      'Robot Lawn Mower',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: MyStyle().textColor,
        //color: Colors.blue[300],
      ),
    );
  }

  Widget showlogo() {
    return Container(
      width: 120,
      height: 120,
      child: Image.asset('images/logoo.png'),
    );
  }

  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Password',
            hintText: 'More 6 charactor'),
      ),
    );
  }

  Widget button() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        color: MyStyle().textColor,
        icon: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        label: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          var rount = MaterialPageRoute(
              builder: (BuildContext context) => SecondPage());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

  Widget registor() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        color: MyStyle().textColor,
        icon: Icon(
          Icons.invert_colors,
          color: Colors.white,
        ),
        label: Text(
          'Registor',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  showlogo(),
                  //showdata1(),
                  showdata2(),
                  emailText(),
                  passwordText(),
                  button(),
                  registor(),
                ],
              ),
            )),
      ),
    );
  }
}
