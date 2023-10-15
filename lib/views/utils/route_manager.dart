import 'package:flutter/material.dart';
import 'package:todo/views/screens/add_screen.dart';
import 'package:todo/views/screens/main_screen.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case 'main':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case 'add':
        return MaterialPageRoute(builder: (_) => const AddScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('Route name ${settings.name} not defined'),
            ),
          );
        });
    }
  }
}

enum RouterPage { main, add }
