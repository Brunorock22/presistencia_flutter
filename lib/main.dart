import 'package:flutter/material.dart';
import 'package:persistencia/models/Contact.dart';
import 'package:persistencia/screens/dashboard.dart';

import 'database/app_database.dart';

void main() {
  runApp(ByteBank());

}

class ByteBank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        )
      ),
      home: Dashboard()
    );
  }
}

