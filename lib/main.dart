import 'package:flutter/material.dart';
import 'package:test/core/nofires.dart';
import 'package:test/widget_tree.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isdarkmodenoifier,
      builder: (context, isdark, child) {
        return MaterialApp(
          //this to remove the debug panner

          debugShowCheckedModeBanner: false,
          title: 'hello app',
          theme: ThemeData(
            brightness: isdark ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const widgettree(),
          //to connect the main dart to home page
        );
      },
    );
  }
}
