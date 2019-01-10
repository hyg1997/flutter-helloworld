import 'package:flutter/material.dart';
import 'package:hello_world/widgets/text_input/index.dart';
import 'package:hello_world/util/password_validator/index.dart';

class PasswordInput extends StatefulWidget {
  final Key key;
  String password;
  PasswordInput({this.password, this.key});
  @override
  State<StatefulWidget> createState() => new PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return new TextInput(
      hideText: true,
      keyboardType: TextInputType.text,
      label: 'Ingrese su password',
      placeholder: 'Ingrese su password',
      onSaved: (String value) {
        widget.password = value;
      },
      validator: passwordValidator,
    );
  }
}