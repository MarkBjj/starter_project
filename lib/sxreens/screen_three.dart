import 'package:flutter/material.dart';
import 'package:starter_project/widgets/navigation_drawer.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Screen Three'),
      ),
      //drawer: NavigationDrawer(),
      endDrawer: NavigationDrawer(),
      body: Center(
        child: Container(
          child: const Text('Screen Three'),
        ),
      ),
    );
  }
}
