import 'package:flutter/material.dart';
import 'package:lab1/screens/home.dart';
import 'package:lab1/utility/mystyle.dart';
class DetailPage extends StatefulWidget {
  final String name,email, password,phone;
  DetailPage({Key key, this.name, this.email,this.password,this.phone})
      : super(key: key);
      
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override

  Widget name1() {
    return Text("Name: ${widget.name}");
  }

  Widget pass1() {
    return Text("Password: ${widget.password}");
  }

  Widget email1() {
    return Text("E-mail Address: ${widget.email}");
  }

  Widget phone1() {
    return Text("TelePhone: ${widget.phone}");
  }

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
          'Confirm',
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("กรุณาตรวจสอบข้อมูล"),
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
                
                name1(),
                email1(),
                pass1(),
                phone1(),
                toHomePage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}