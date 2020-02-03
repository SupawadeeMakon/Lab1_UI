import 'package:flutter/material.dart';

class ShowCal extends StatefulWidget {
  final String valueXfromSecond, valueYfromSecond;
  ShowCal({
    Key key,
    this.valueXfromSecond,
    this.valueYfromSecond,
  }) : super(key: key);
  @override
  _ShowCalState createState() => _ShowCalState();
}

class _ShowCalState extends State<ShowCal> {
  Widget add() {
    return Text("บวก: ${widget.valueXfromSecond}+${widget.valueYfromSecond}");
  }

  Widget subtract() {
    return Text("ลบ: ${widget.valueXfromSecond}-${widget.valueYfromSecond}");
  }

  Widget multiply() {
    return Text("คูณ: ${widget.valueXfromSecond}x${widget.valueYfromSecond}");
  }

  Widget divide() {
    return Text("หาร: ${widget.valueXfromSecond}/${widget.valueXfromSecond}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ผลลัพธ์"),
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
                add(),
                subtract(),
                multiply(),
                divide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
