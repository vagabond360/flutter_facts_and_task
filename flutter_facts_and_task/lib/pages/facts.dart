import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_facts_and_task/services/random_fact.dart';

//class RandomFacts extends StatefulWidget {
//  @override
//  _RandomFactsState createState() => _RandomFactsState();
//}

class RandomFacts extends StatefulWidget {

  @override
  _RandomFactsState createState() => _RandomFactsState();
}

class _RandomFactsState extends State<RandomFacts> {

  int _triviaButtonColor = 0xFF7174F2;
  int _yearButtonColor = 0xFFDA78ED;
  int _mathButtonColor = 0xFF66E099;
  int _dateButtonColor = 0xFFE0E34D;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 32.0),
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 0.0),
                  height: 223.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                      colors: [Color(0xFFEC008C), Color(0xFFFC6767)],
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                     Align(
                      alignment: Alignment(0.0,-0.75),
                      child: Text('', //fact number
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48.0,
                          letterSpacing: 16.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0,0.3),
                      child: Text('', //fact text
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.17,
                        ),
                      ),
                    ),
                   ],
                  ),
                ),
              ),
            ],
          ),
          Text('Select the category you want to generate',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(width: 20),
                FactButton(name: 'Trivia', color: Color(_triviaButtonColor)),
                SizedBox(width: 15),
                FactButton(name: 'Year', color: Color(_yearButtonColor)),
                SizedBox(width: 20),
              ],
            ),
          ),
          // SizedBox(height: 15),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(width: 20),
                FactButton(name: 'Math', color: Color(_mathButtonColor)),
                SizedBox(width: 15),
                FactButton(name: 'Date', color: Color(_dateButtonColor)),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        backgroundColor: Colors.white,
        //TODO: add onTap
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
    );
  }
}

class FactButton extends StatelessWidget {

  String name;
  Color color;

  FactButton({this.name,this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 155,
        child: FlatButton(
          onPressed: () {},
          child: Text('$name',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 8.0, // has the effect of softening the shadow
              offset: Offset(
                0.0, // horizontal, move right 0
                8.0, // vertical, move down 8
              ),
            )
          ],
        ),
      ),
    );
  }
}


