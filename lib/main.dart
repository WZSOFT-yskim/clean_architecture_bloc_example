import 'package:clean_architecture_bloc_example/app/app.dart';
import 'package:clean_architecture_bloc_example/di.dart';
import 'package:flutter/material.dart';

void main() async {
  await init();
  runApp(const App());
}
