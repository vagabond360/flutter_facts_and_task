import 'package:flutter/material.dart';
import 'package:flutter_facts_and_task/pages/facts.dart';
import 'package:flutter_facts_and_task/pages/my_page.dart';
import 'package:flutter_facts_and_task/pages/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedPage = 0;
  final _pageOptions = [
    RandomFactsPage(),
    ToDoPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'keklol',
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          backgroundColor: Colors.white,
          fixedColor: Color(0xFFEC008C),
          //TODO: add onTap
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shuffle),
              title: Text('Facts'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add),
              title: Text('Tasks'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              title: Text('My'),
            )
          ],
        ),
      ),
    );
  }
}
