import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//class RandomFacts extends StatefulWidget {
//  @override
//  _RandomFactsState createState() => _RandomFactsState();
//}

class RandomFacts extends StatelessWidget {

  int _triviaButtonColor = 0xFF7174F2;
  int _yearButtonColor = 0xFFDA78ED;
  int _mathButtonColor = 0xFF66E099;
  int _dateButtonColor = 0xFFE0E34D;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FactBoard(),
          Text('Select the category you want to generate',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Expanded(
//            flex: 3,
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
//            flex: 3,
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

class FactBoard extends StatefulWidget {
  @override
  _FactBoardState createState() => _FactBoardState();
}

class _FactBoardState extends State<FactBoard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 32.0),
            height: 223.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              gradient: LinearGradient(
                colors: [Color(0xFFEC008C), Color(0xFFFC6767)],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class FactButton extends StatelessWidget {

  String name;
  Color color;
  Function onPress;

  FactButton({this.name,this.color}); //TODO: add this.onPress

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 155,
        child: FlatButton(
          onPressed: () {onPress();},
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

