import 'package:flutter/material.dart';
import 'package:starter_project/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Starter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          headline1: const TextStyle(
              color: Colors.black54, fontSize: 22, fontWeight: FontWeight.bold),
          bodyText1: const TextStyle(color: Colors.black54, fontSize: 20),
        ),
      ),
      //home: const MyHomePage(),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(),
      ),
    );
  }
}
