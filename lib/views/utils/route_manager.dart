import 'package:flutter/material.dart';
import 'package:todo/views/screens/index_screen.dart';

class RouteManager{

  static Route<dynamic> generateRoute(RouteSettings settings){

    final arguments = settings.arguments;

    switch(settings.name){
      case '/' :

        return MaterialPageRoute(builder: (_) => const IndexScreen());

      default:

        return MaterialPageRoute(builder: (_) {

          return Scaffold(
            body: Center(
              child: Text('Route with name ${settings.name} not defined'),
            ),
          );
        });
    }
  }
}