
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  TestWidget({Key key, this.alarmFired}) : super(key: key);


  final bool alarmFired;
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {

    return Column(children: <Widget>[
      widget.alarmFired ? Container(height: 50, width: double.infinity, color: Colors.brown,) : Container(), 
      Expanded(child: Container(
       child: Container(color: Colors.red,),
    ),)
    ],);
    
  }
}