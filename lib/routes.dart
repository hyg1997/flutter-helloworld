import 'package:flutter/material.dart';
import 'screens/login/index.dart';
import 'screens/home/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Login': (BuildContext context) => new Login(),
    '/Home': (BuildContext context) => new Home()
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'Hello World',
      routes: routes,
      home: new Login(),
    ));
  }
}
