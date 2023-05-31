import 'package:flutter/material.dart';
import 'package:test/core/constemt.dart';
import 'package:test/core/nofires.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile'),
      ),
      body: const Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/yeah.png'),
          radius: 60,
        ),
        SizedBox(height: kdobles20),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('flutter map1'),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('flutter map2'),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text('flutter map3'),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isdarkmodenoifier.value = !isdarkmodenoifier.value;
        },
      ),
    );
  }
}
