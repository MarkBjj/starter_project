import 'package:flutter/material.dart';
import 'package:starter_project/assets/colors.dart';
import 'package:starter_project/widgets/navigation_drawer.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkFontStyle,
        title: const Text('Screen One'),
      ),
      //drawer: NavigationDrawer(),
      body: Center(
        child: Container(
          child: const Text('Screen One'),
        ),
      ),
    );
  }
}
