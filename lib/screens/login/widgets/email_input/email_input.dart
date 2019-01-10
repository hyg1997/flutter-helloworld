import 'package:flutter/material.dart';
import 'package:hello_world/widgets/text_input/index.dart';
import 'package:hello_world/util/email_validator/index.dart';

class EmailInput extends StatefulWidget {
  final Key key;
  String email;
  EmailInput({this.email, this.key});
  @override
  State<StatefulWidget> createState() => new EmailInputState();
}

class EmailInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return new TextInput(
      hideText: false,
      keyboardType: TextInputType.emailAddress,
      label: 'Ingrese su email',
      placeholder: 'Ingrese su email',
      onSaved: (String value) {
        widget.email = value;
      },
      validator: emailValidator,
    );
  }
}
