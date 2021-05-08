

import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final String textToDisplay;

  TextDisplay({@required this.textToDisplay});


  @override
  Widget build(BuildContext context) {
    return Text(textToDisplay);
  }
}
