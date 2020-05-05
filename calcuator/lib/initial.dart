import 'package:calcuator/app/components/home.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Initial extends StatefulWidget {
  @override
  _InitialState createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final getIn = InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 80),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            gradient:
            LinearGradient(colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF6078ea).withOpacity(.3),
                  offset: Offset(0.0, 8.0),
                  blurRadius: 8.0),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Home()));
            },
            child: Center(
              child: Text(
                "Let's Gooo",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    final wave = WaveWidget(
      config: CustomConfig(
        gradients: [
          [Colors.red[800], Color(0x77E57373)],
          [Colors.yellow, Color(0xffFBB034)],
          [Colors.red, Color(0xEEF44336)],
          [Color(0xff5AFF15), Color(0xff01BAEF)]
        ],
        durations: [35000, 19440, 10800, 6000],
        heightPercentages: [0.20, 0.23, 0.25, 0.39],
//        blur: MaskFilter.blur(BlurStyle.solid, 10),
        gradientBegin: Alignment.bottomLeft,
        gradientEnd: Alignment.topRight,
      ),
      waveAmplitude: 0,
      size: Size(_width, _height / 3),
    );
    final _appName = Hero(
        tag: 'appName',
        child:
//      Text(
//        "Quotes by \n  AlentSoft",
//        style: TextStyle(
//            color: Theme.of(context).primaryColor,
//            fontSize: 34,
//            letterSpacing: 5),
//      ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width:_width ,
                height: _height/3,
//                child: Image.asset(
//                  "assets/images/quotess.png",
//                  fit: BoxFit.contain,
//                )
            ),

          ],
        ));

    return SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _appName,
                          getIn,
                        ],
                      ),
                    ),
                    wave,
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
