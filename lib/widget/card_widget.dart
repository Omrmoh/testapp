import 'package:flutter/material.dart';
import 'package:test/class/item_class.dart';
import 'package:test/views/discription_page.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return discriptionpage(
              box: box,
            );
          },
        ));
      },
      child: Card(
        child: Container(
          width: double.infinity,
          //this for double.infinty to make the photo a big as possible
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(box.imagepath),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('This is a${box.title} discribtion')
            ],
          ),
        ),
      ),
    );
  }
}
