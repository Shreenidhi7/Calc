
import 'package:calcuator/app/components/calcUI.dart';
import 'package:calcuator/app/components/home.dart';
import 'package:calcuator/app/splash_screen.dart';
import 'package:calcuator/initial.dart';
import 'package:flutter/material.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return new CustomRoute(
//          builder: (_)=> SplashScreen(),
//        builder: (_)=> Home(),
        builder: (_)=> CalcUI(),
          settings: settings,
        );

      case '/intro':
      // Validation of correct data type
        return new CustomRoute(
            builder: (_)=>Initial(),
          settings: settings,
        );

      case '/home':
        return new CustomRoute(
          builder: (_)=>Home(),
          settings: settings,
        );

      case '/calcUI':
        return new CustomRoute(
          builder: (_)=>CalcUI(),
          settings: settings,
        );

      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
