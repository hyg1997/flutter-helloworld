import 'package:flutter/material.dart';
import 'package:hello_world/widgets/styled_button/index.dart';
import 'widgets/form_inputs/index.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Iniciar Sesión'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            key: _formKey,
            child: new ListView(
              children: <Widget>[
                new EmailInput(controller: _emailController),
                new PasswordInput(controller: _passwordController),
                new StyledButton(
                    backgroundColor: Colors.blue,
                    fontColor: Colors.white,
                    label: 'Login',
                    width: MediaQuery.of(context).size.width,
                    onPressed: () {
                      print(
                          'email: ${_emailController.text}\npassword:${_passwordController.text}');
                      Navigator.pushNamed(context, '/Home');
                    })
              ],
            ),
          )),
    );
  }
}
