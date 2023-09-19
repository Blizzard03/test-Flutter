import 'package:flutter/material.dart';
import 'package:test/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //Fondasi utama
  @override
  Widget build(BuildContext context) {
    //fondasi batu
    return MaterialApp(
      title: 'Tutorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomeScreen()
          );

          //body: Row(children: [
          //SizedBox(
          //width: MediaQuery.of(context).size.width,

          //child: AspectRatio(
          //aspectRatio: 1 / 1,
          //child: Container(
          //color: Colors.green,

          // ),
          //),
          //),
          //]),
          //body: Stack(
          //children: [
          // Container(
          // color: Colors.red,
          //width: double.infinity,
          //height: double.infinity,
          //),
          //Positioned(
          //left: 50,
          //top: 50,
          //child: Container(
          //color: Colors.blue,
          //width: 200,
          //height: 120,
          //),
          //),
          //],
          //),
          //),
   // );
  }
}
