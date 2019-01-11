import 'package:flutter/material.dart';
import 'package:hello_world/widgets/text_input/index.dart';
import 'package:hello_world/util/validation_utils.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  const PasswordInput({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new TextInput(
      hideText: true,
      keyboardType: TextInputType.text,
      label: 'Ingrese su password',
      placeholder: 'Ingrese su password',
      controller: controller,
      validator: passwordValidator,
    );
  }
}
