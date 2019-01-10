import 'package:flutter/material.dart';
import 'screens/login/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Auth': (BuildContext context) => new Login()
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'Hello World',
      routes: routes,
      home: new Login(),
    ));
  }
}
