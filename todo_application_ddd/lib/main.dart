import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_application_ddd/injection.dart';
import 'package:todo_application_ddd/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
