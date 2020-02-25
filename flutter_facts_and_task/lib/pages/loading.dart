import 'package:flutter/material.dart';
import 'package:flutter_facts_and_task/services/random_fact.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading page'),
      )
    );
  }

  @override
  void initState() {
    super.initState();
//    Fact randomFact = Fact(factType: 'math');
//    randomFact.getFact();
  }
}
