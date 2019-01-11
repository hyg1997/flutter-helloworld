import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final bool hideText;
  final String label;
  final String placeholder;
  final TextInputType keyboardType;
  final void Function(String) onSaved;
  final String Function(String) validator;

  const TextInput({Key key, this.controller, this.hideText, this.label, this.placeholder, this.keyboardType, this.onSaved, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new TextFormField(
        controller: controller,
        obscureText: hideText,
        keyboardType: keyboardType,
        decoration:
            new InputDecoration(hintText: label, labelText: placeholder),
        onSaved: onSaved,
        validator: validator);
  }
}
