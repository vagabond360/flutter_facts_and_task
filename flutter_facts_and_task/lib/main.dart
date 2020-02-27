import 'package:flutter/material.dart';
import 'package:flutter_facts_and_task/pages/facts.dart';
import 'package:flutter_facts_and_task/pages/todo.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/Tasks',
  routes: {
    '/': (context) => RandomFactsPage(),
    '/Tasks': (context) => ToDo(),
  },
));

