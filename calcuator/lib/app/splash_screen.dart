import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 5000),
    )..addStatusListener((status) => status == AnimationStatus.completed
        ?
//        Navigator.push(context, MaterialPageRoute(builder: (_)=>Initial()))
    Navigator.pushReplacementNamed(context, '/intro')
        : animationController.forward());
    animation =
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInToLinear,
        );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: ScaleTransition(
              scale: animation,
//              child: Image.asset(
//                'assets/images/quotess.png',
//                fit: BoxFit.cover,
//              ),
            child: Text("Calculator \n Numbers in Fingers"),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(

//                colors: [Colors.black, Colors.black12],
                colors: [
                  Color(0xffed4264),
                  Color(0xffffedbc)

//                  Color(0xFF000428),
//                  Color(0xFF004e92),
                ],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
//                begin: const FractionalOffset(0.5, 0.0/*),
//                end: const FractionalOffset(0.0, 0.5),*/
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
    );
  }
}
