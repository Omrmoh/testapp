import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test/class/item_class.dart';
import 'package:test/core/constemt.dart';
import 'package:test/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(color: Colors.transparent),
        )),
        elevation: 0,
        backgroundColor: Colors.white.withAlpha(200),
        title: const Text("learn flutter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cardwidget(
              box: ItemClass(title: 'rocket', imagepath: 'images/door.png'),
            ),
            const SizedBox(
              //this to make a box
              height: kdobles5,
            ),
            //this to make a countainer with a photo

            Row(
              children: [
                Expanded(
                  child: Cardwidget(
                    box: ItemClass(
                        title: 'tarvel', imagepath: 'images/travel.png'),
                  ),
                ),
                Expanded(
                  child: Cardwidget(
                    box: ItemClass(title: 'app', imagepath: 'images/app.png'),
                  ),
                ),
              ],
            ),
            Cardwidget(
              box: ItemClass(title: 'yeah', imagepath: 'images/yeah.png'),
            ),
            Cardwidget(
              box: ItemClass(
                  title: 'this is space', imagepath: 'images/space.png'),
            ),
            Cardwidget(
              box: ItemClass(title: 'yeah', imagepath: 'images/cactus.png'),
            ),
          ],
        ),
      ),
    );
  }
}
