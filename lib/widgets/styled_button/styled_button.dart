import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final double width;
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final void Function() onPressed;

  StyledButton(
      {this.width, this.label, this.backgroundColor, this.fontColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: width,
      child: new RaisedButton(
        child: new Text(
          label,
          style: new TextStyle(color: fontColor),
        ),
        onPressed: onPressed,
        color: backgroundColor,
      ),
      margin: new EdgeInsets.only(top: 20.0),
    );
  }
}
