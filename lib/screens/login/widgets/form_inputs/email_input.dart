import 'package:flutter/material.dart';
import 'package:hello_world/widgets/text_input/index.dart';
import 'package:hello_world/util/validation_utils.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;

  const EmailInput({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new TextInput(
        hideText: false,
        keyboardType: TextInputType.emailAddress,
        label: 'Ingrese su email',
        placeholder: 'Ingrese su email',
   Sta     validator: emailValidator,
        controller: controller);
  }
}
