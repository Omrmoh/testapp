import 'package:flutter/material.dart';
import 'package:test/class/item_class.dart';
import 'package:test/core/constemt.dart';

class discriptionpage extends StatefulWidget {
  const discriptionpage({super.key, required this.box});

  final ItemClass box;

  @override
  State<discriptionpage> createState() => discription_pageState();
}

class discription_pageState extends State<discriptionpage> {
  double fontSizecoustm = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.dangerous)),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('.')));
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kdobles10),
          child: Column(
            children: [
              Image.asset(widget.box.imagepath),
              Wrap(
                spacing: kdobles10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizecoustm = 20;
                      });
                    },
                    child: const Text('small title'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecoustm = 50;
                      });
                    },
                    child: const Text('Med title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecoustm = 100;
                      });
                    },
                    child: const Text('Big title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizecoustm = 200;
                      });
                    },
                    child: const Text('Huge title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizecoustm, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                becon_discription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kdobles10,
              ),
              const Text(
                becon_discription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
