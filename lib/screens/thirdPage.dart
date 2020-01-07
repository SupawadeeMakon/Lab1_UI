import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget {
  final String valueFromSecondPage;
  ThirdPage({Key key,this.valueFromSecondPage }):super(key:key);
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final String titleString = "ThirdPage"; //ประกาศตัวแปร
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text("${widget.valueFromSecondPage}"),
    );
  }
}