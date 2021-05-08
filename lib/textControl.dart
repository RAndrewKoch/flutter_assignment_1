import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  final Function swapText;

  TextControl({@required this.swapText});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Push here"),
      onPressed: swapText,
    );
  }
}
