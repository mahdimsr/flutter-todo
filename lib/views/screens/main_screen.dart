import 'package:flutter/material.dart';
import 'package:todo/views/utils/route_manager.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Index'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            Navigator.pushNamed(context, RouterPage.add.name);
          },
          child: const Icon(Icons.add)),
    );
  }
}
