import 'package:flutter/material.dart';
import 'package:flutter_facts_and_task/pages/loading.dart';
import 'package:flutter_facts_and_task/pages/home.dart';
import 'package:flutter_facts_and_task/pages/tasks.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/RandomFacts',
  routes: {
    '/': (context) => Loading(),
    '/RandomFacts': (context) => RandomFacts(),
    '/Tasks': (context) => Tasks()
  },
));

