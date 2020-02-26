import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Text('Create your check list',
                        style: TextStyle(
                          fontSize: 26.0,
                          letterSpacing: 0.17,
                          color: Color(0xFF393939),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0,),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: Icon(Icons.add,
                          color: Colors.deepOrange,
                          size: 20.0,
                        ),
                        label: Text('Add some task',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 18.0,
                            letterSpacing: 0.17,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: ListView(
                    children: <Widget>[
                      //task list
                    ],
                  ),
                )
             ],
           ),
        ),
      ),
    );
  }
}