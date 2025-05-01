import 'package:flutter/material.dart';

class MySeason extends StatelessWidget {
  final url;
  // final text;

  const MySeason({required this.url,super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,

      children: [
        Image.asset(
          height: 100,
          width: 100,

          fit: BoxFit.cover,

          "assets/tree1.jpg",

          // Text("Fall", style: TextStyle(color: Colors.red, fontSize: 25)),
        ),
      ],


    );
  }
}

