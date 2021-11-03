import 'package:flutter/material.dart';
import 'package:starter_project/widgets/navigation_drawer.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Screen Two'),
      ),
      //drawer: NavigationDrawer(),
      body: Center(
        child: Container(
          child: const Text('Screen Two'),
        ),
      ),
    );
  }
}
