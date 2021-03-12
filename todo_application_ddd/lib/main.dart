import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_application_ddd/injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material app Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Todo appp DDD'),
          ),
        ),
      ),
    );
  }
}
