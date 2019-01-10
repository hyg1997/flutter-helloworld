import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final bool hideText;
  final TextInputType keyboardType;
  final void Function(String) onSaved;
  final String Function(String) validator;
  final String label;
  final String placeholder;

  TextInput(
      {this.hideText,
      this.keyboardType,
      this.onSaved,
      this.validator,
      this.label,
      this.placeholder});

  @override
  Widget build(BuildContext context) {
    return new TextFormField(
        obscureText: hideText,
        keyboardType: keyboardType,
        decoration:
            new InputDecoration(hintText: label, labelText: placeholder),
        onSaved: onSaved,
        validator: validator);
  }
}
