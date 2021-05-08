import 'package:flutter/material.dart';

import './textControl.dart';
import './textDisplay.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexOfTextToDisplay = 0;
  final _textList =["This is some text", "This is some different Text", "This is some Bullshit"];


  String _swapText (){
    setState(() {
      if (_indexOfTextToDisplay<_textList.length-1){
        _indexOfTextToDisplay+=1;
      } else {
        _indexOfTextToDisplay=0;
      }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Assignment 1"),
            ),
            body: Column(children: [
              Center(
                  child: TextDisplay(textToDisplay: _textList[_indexOfTextToDisplay],),
              ),
              TextControl(swapText: _swapText),
            ])));
  }
}
