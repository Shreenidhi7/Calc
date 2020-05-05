import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalcUI extends StatefulWidget {
  @override
  _CalcUIState createState() => _CalcUIState();
}

class _CalcUIState extends State<CalcUI> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final _try = Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("AC")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(alignment: Alignment.center, child: Text("-->")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Icon(CupertinoIcons.back)),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons8-divide-24.png',
                color: Colors.cyan,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );

    final _try1 = Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("7")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(alignment: Alignment.center, child: Text("8")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("9")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons8-multiply-50.png',
                color: Colors.cyan,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );

    final _try2 = Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("4")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(alignment: Alignment.center, child: Text("5")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("6")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
              alignment: Alignment.center,
//              child: Image.asset(
//                'assets/icons8-divide-24.png',
//                color: Colors.cyan,
//                fit: BoxFit.cover,
//              ),
            child: Icon(Icons.add,color: Colors.cyan,),

            ),
          ),
        ],
      ),
    );

    final _try3 = Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("1")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(alignment: Alignment.center, child: Text("2")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("3")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
              alignment: Alignment.center,
//              child: Image.asset(
//                'assets/icons8-divide-24.png',
//                color: Colors.cyan,
//                fit: BoxFit.cover,
//              ),
            
            child: Icon(CupertinoIcons.minus_circled,color: Colors.cyan,),
            ),
          ),
        ],
      ),
    );

    final _try4 = Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text("00")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(alignment: Alignment.center, child: Text("0")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
                alignment: Alignment.center,
                child: Text(".")),
          ),
          Container(
            width: _width / 4,
            height: _height / 6.576,
            child: Align(
              alignment: Alignment.center,
//              child: Image.asset(
//                'assets/icons8-divide-24.png',
//                color: Colors.cyan,
//                fit: BoxFit.cover,
//              ),
            child: Text("=",style: TextStyle(color: Colors.cyan),),
            ),
          ),
        ],
      ),
    );








    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        color: Colors.cyan,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_try,
              _try1,
                _try2,
                _try3,
                _try4

            ],
          ),
        ),
      ),
    ));
  }
}
