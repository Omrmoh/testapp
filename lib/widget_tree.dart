// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:test/views/Homepage.dart';
import 'package:test/views/profilepage.dart';

class widgettree extends StatefulWidget {
  const widgettree({super.key});

  @override
  State<widgettree> createState() => _widgettreeState();
}

class _widgettreeState extends State<widgettree> {
  int cuenetpage = 0;
  List<Widget> pages = [
    const HomePage(),
    const profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(cuenetpage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        ],
        selectedIndex: 0,
        onDestinationSelected: (int value) {
          setState(() {
            cuenetpage = value;
          });
        },
      ),
    );
  }
}
