import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter SafeArea',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(
            bottom: false,
            left: true,
            right: true,
            child: ListView(
              children: List.generate(
                  100,
                  (i) => Text(
                        '$i- Hola Mundo',
                        style: const TextStyle(fontSize: 20),
                      )),
            ),
          ),
        ));
  }
}
