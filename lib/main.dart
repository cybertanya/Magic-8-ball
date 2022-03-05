import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(child: Text("8 Magic Ball")),
          backgroundColor: Colors.blue,
        ),
        body: const Magic(),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ImageValue = 1;
  Random random = new Random();
  void ImageChanger() {
    setState(() {
      ImageValue = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$ImageValue.png'),
              onPressed: () {
                ImageChanger();
              },
            ),
          ),
        ],
      ),
    );
  }
}
