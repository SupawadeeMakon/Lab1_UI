import 'package:flutter/material.dart';
import 'package:lab1/screens/detail.dart';
import 'package:lab1/utility/mystyle.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final String titleString = "ThirdPage"; //ประกาศตัวแปร
  var textEmailController = new TextEditingController();
  var textPassController = new TextEditingController();
  var textNameController = new TextEditingController();
  var textPhoneController = new TextEditingController();

  Widget nameText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.people,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Enter Name and Surname',
            hintText: 'Name Surname'),
            controller: textNameController,
      ),
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
            controller: textEmailController,
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.phone,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'Password',
            hintText: 'More 6 charactor'),
            controller: textPassController,
      ),
    );
  }

  Widget phoneText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              size: 36.0,
              color: Colors.purple[400],
            ),
            labelText: 'TelePhone',
            hintText: '10 charactor'),
            controller: textPhoneController,
      ),
    );
  }

  Widget toDetailPage() {
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
          var rount = MaterialPageRoute(
              builder: (BuildContext context) => DetailPage(
                    name: textNameController.text,
                    email: textEmailController.text,
                    password: textPassController.text,
                    phone: textPhoneController.text,
                  ));
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
                nameText(),
                emailText(),
                passwordText(),
                phoneText(),
                toDetailPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
