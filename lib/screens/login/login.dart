import 'package:flutter/material.dart';
import 'package:hello_world/widgets/styled_button/index.dart';

import 'widgets/email_input/index.dart';
import 'widgets/password_input/index.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<EmailInputState> _emailInputKey =
      new GlobalKey<EmailInputState>();
  final GlobalKey<PasswordInputState> _passwordInputKey =
      new GlobalKey<PasswordInputState>();
  _LoginData _data = new _LoginData();

  void submit() {
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();
      _data.email = this._emailInputKey.currentState.widget.email;
      _data.password = this._passwordInputKey.currentState.widget.password;
      print('Printing the login data.');
      print('Email: ${_data.email}');
      print('Password: ${_data.password}');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize;
    screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Iniciar Sesión'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            key: this._formKey,
            child: new ListView(
              children: <Widget>[
                new EmailInput(key: this._emailInputKey),
                new PasswordInput(key: this._passwordInputKey),
                new StyledButton(
                    backgroundColor: Colors.blue,
                    fontColor: Colors.white,
                    label: 'Login',
                    width: screenSize.width,
                    onPressed: this.submit)
              ],
            ),
          )),
    );
  }
}
